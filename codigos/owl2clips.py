#!C:\Users\llumf\AppData\Local\Microsoft\WindowsApps\PythonSoftwareFoundation.Python.3.9_qbz5n2kfra8p0\python.exe
"""
.. module:: owl2clips

owl2clips
******

:Description: owl2clips

    Transforms an OWL ontology to COOL CLIPS Language

:Authors:
    bejar

:Version: 

:Date:  08/05/2020
"""

__author__ = 'bejar'

import argparse

from rdflib import Graph
from rdflib import RDFS, RDF, OWL, URIRef
from rdflib.util import find_roots, get_tree
import time

from owl2conv.owlobjects import owlclass, owlinstance


def tree_to_list(tree):
    """
    Transforms a tree structure on a list recursivelly
    :return:
    """
    root = [tree[0]]
    if tree[1] is not []:
        descendants = [tree_to_list(l) for l in tree[1]]
    for f in descendants:
        root.extend(f)
    return root


def get_class_hierarchy(g):
    """
    Extract the class hierarchy

    :return:
    """
    # get all the classes
    r = g.subjects(RDF.type, OWL.Class)

    # get all the roots of the subClassOf relation (classes without subclasses will be missing)
    lroots = [r for r in find_roots(g, RDFS.subClassOf)]

    # Set of all classes on the subClassOf tree
    SCOset = set()
    roots = []
    for p in lroots:
        t = get_tree(g, p, RDFS.subClassOf)
        roots.append(t)
        tl = tree_to_list(t)
        for l in tl:
            SCOset.add(l)

    if len(lroots) == 1 and lroots[0] == OWL.Thing:
        # owl:Thing is the top of the hierarchy but there are classes that
        # are not a subclass of owl:Thing
        lr = roots[0][1]
        for c in r:
           if (type(c) == URIRef) and (c not in SCOset):
               lr.append((c, []))
        roots = [(roots[0][0], lr)]
    else:
        for c in r:
            if (type(c) == URIRef) and (c not in SCOset):
                roots.append((c, []))

    return roots


def build_hierarchy(g, tree):
    """
    Creates the properties of each class
    :param trees:
    :return:
    """
    root = tree[0]
    node = owlclass(root)
    node.get_attributes_from_graph(g)
    node.get_properties_from_graph(g)
    desc = [build_hierarchy(g, n) for n in tree[1]]
    for d in desc:
        d[0].parent = node

    return [node, desc]


def get_individuals(g, cdict):
    """
    Obtains all instances
    :return:
    """
    # get all the individuals
    r = g.subjects(RDF.type, OWL.NamedIndividual)

    lins = []
    for i in r:
        ins = owlinstance(i)
        ins.get_attributes_from_graph(g)
        ins.get_info_from_graph(g, cdict)
        lins.append(ins)

    return lins


def generate_classes_clips(hierarchy, clipsfile, labels):
    """
    Generates and writes the classes to a file using CLIPS syntax
    :param hierarchy:
    :param clipsfile:
    :return:
    """

    clipsfile.write(hierarchy[0].toCLIPS(labels))
    clipsfile.write("\n")
    lclass = []
    for h in hierarchy[1]:
        lclass.extend(generate_classes_clips(h, clipsfile, labels))
    lclass.extend([hierarchy[0]])
    return lclass


def generate_individuals_clips(individuals, f, graph, labels):
    """
    Generates all the individuals and writes them to a file in CLIPS syntax
    :param individuals:
    :return:
    """
    f.write("(definstances instances\n")
    for i in individuals:
        f.write(i.toCLIPS(graph, labels))
        f.write("\n")
    f.write(")\n")


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('--input',  required=True, help='Input file')
    parser.add_argument('--output', default=None, help='Output file')
    parser.add_argument('--format', required=True, choices=['xml', 'turtle'], help='File format')
    parser.add_argument('--labels',  action='store_true', default=False, help='use labels for generating names')
 
    args = parser.parse_args()
    if args.output is None:
        out = args.input.split('.')[0]
        out += '.clp'
    else:
        out = args.output

    g = Graph()
    g.parse(args.input, format=args.format)

    print(f'OWL2CLIPS: translating {args.input} to CLIPS ...')

    f = open(out, 'w')

    f.write(f";;; ---------------------------------------------------------\n")
    f.write(f";;; {out}\n")
    f.write(f";;; Translated by owl2clips\n")
    f.write(f";;; Translated to CLIPS from ontology {args.input}\n")
    f.write(f";;; :Date {time.strftime('%d/%m/%Y %H:%M:%S', time.localtime())}\n")
    f.write("\n") 

    hierarchy = get_class_hierarchy(g)

    # owl:Thing is the top of the hierarchy, so we skip it
    if hierarchy[0][0] == OWL.Thing:
        hierarchy = hierarchy[0][1]

    classes_dict = {}
    for h in hierarchy:
        ch = build_hierarchy(g, h)
        lclass = generate_classes_clips(ch, f, args.labels)
        for c in lclass:
            classes_dict[c.name] = c

    individuals = get_individuals(g, classes_dict)

    generate_individuals_clips(individuals, f, g, args.labels)

    f.close()