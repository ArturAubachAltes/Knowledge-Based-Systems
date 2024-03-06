from generador_dades import subgenre_trigger_warning_probabilities, trigger_warnings, genre_teen_trigg_prob, adol_genres_probs
import numpy as np
import random
import sys

def instancia_baby(goal,illustrated,theme):
    instancia = f"""
    ([lector] of Lector
        (public "baby")
        (goal "{goal}")
        (hab_lectura "Neutral")
        (illustrated {illustrated})
        (theme "{theme}")
    )"""
    return instancia

def instancia_children(illustrated, theme, time_read):
    instancia = f"""
    ([lector] of Lector
        (public "children")
        (hab_lectura "Neutral")
        (illustrated {illustrated})
        (theme "{theme}")
        (time_read "{time_read}")
    )"""
    return instancia

#No és segur, fa falta revisar com emmagatzemam es trigger_warnings
def instancia_teenager(main_genre, bestseller, cover, time_read, triggerw):
    instancia = f"""
    ([lector] of Lector
        (public "teenager")
        (main_genre [{main_genre}])
        (bestseller {bestseller})
        (cover "{cover}")
        (hab_lectura "Neutral")
        (time_read "{time_read}")"""
    
    if triggerw != "":
        triggers = ""
        llista_tr = triggerw.split()
        for tr in llista_tr:
            triggers += f"{tr} "
        af = f"""        
        (triggerw {triggers})
        )"""
    else:
        af = f"""
        )"""
    instancia += af
    return instancia

def instancia_adult(main_genre, has_subgenre, actual, famous, bestseller, cover, time_read, triggerw):

    instancia = f"""
    ([lector] of Lector
        (public "adult")
        (main_genre [{main_genre}])
        (has_subgenre [{has_subgenre}])
        (actual {actual})
        (famous {famous})
        (bestseller {bestseller})
        (cover "{cover}")
        (hab_lectura "Neutral")
        (time_read "{time_read}")"""
    
    if triggerw != "":
        triggers = ""
        llista_tr = triggerw.split()
        for tr in llista_tr:
            triggers += f"{tr} "
        af = f"""        
        (triggerw {triggers})
        )"""
    else:
        af = f"""
        )"""
    instancia += af
    return instancia


def generar_baby(num_libros):
    libros = []
    temas = ['Sports', 'Music', 'Daily_life', 'Adventures', 'Culture', 'Magic']
    goals = ['Entretainment', 'Learning']
    
    for _ in range(num_libros):
        goal = random.choice(goals)
        illustrated = random.choice(['FALSE', 'TRUE'])
        theme = random.choice(temas)
        libro = instancia_baby(goal, illustrated, theme)
        libros.append(libro)

    return libros

def generar_children(num_libros):
    libros = []
    temas = ['Sports', 'Music', 'Daily_life', 'Adventures', 'Culture', 'Magic']
    time_reads = ['medium', 'long', 'very_long', 'short']
    
    for _ in range(num_libros):
        illustrated = random.choice(['FALSE', 'TRUE'])
        theme = random.choice(temas)
        time_read = random.choice(time_reads)
        libro = instancia_children(illustrated, theme, time_read)
        libros.append(libro)

    return libros

def generar_teenager(num_libros):
    libros = []
    main_genres = ['Fantasy', 'Adventure', 'Mystery', 'Romance', 'Dystopia', 'Social']
    covers = ['soft', 'hard', 'pocket']
    time_reads = ['medium', 'long', 'very_long', 'short']
    triggerws = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15', '16']
    
    for _ in range(num_libros):
        main_genre = random.choice(main_genres)
        bestseller = random.choice(['FALSE', 'TRUE'])
        cover = random.choice(covers)
        time_read = random.choice(time_reads)
        time_read = random.choice(time_reads)
        prob_tw = genre_teen_trigg_prob[main_genre]
        if prob_tw != 0:
            tw = np.random.choice(['TRUE', 'FALSE'])
        else:
            tw = 'FALSE'
        if tw == 'TRUE':
            triggers = random.sample(trigger_warnings[main_genre], random.randint(1,len(trigger_warnings[main_genre])-1))
            trigger_warning = ""
            for t in triggers:
                trigger_warning += ' '
                trigger_warning  += t
        else: 
            trigger_warning = ""
        libro = instancia_teenager(main_genre, bestseller, cover, time_read,trigger_warning)
        libros.append(libro)

    return libros

def generar_adult(num_libros):
    libros = []
    subgenres = {
        "Fantasy": ["High_Fantasy", "Dark_Fantasy", "Urban_Fantasy"],
        "Romance": ["Classic_Romance", "Historical_Romance", "Erotic"],
        "Contemporary": ["Realistic_Fiction", "Historical_Romance_Contemporany", "Real_Dystopia"],
        "Mystery": ["Police", "Thriller_Mystery", "Paranormal_Mystery"],
        "Horror": ["Psychological_Horror", "Thriller_Horror", "Paranormal_Horror"],
        "Historical": ["Realistic", "Fiction_History"],
        "Science_Fiction": ["Space_Opera", "Cyberpunk", "Postapocalyptic_Dystopia", "Technological"]
    }
    covers = ['soft', 'hard', 'pocket']
    time_reads = ['medium', 'long', 'very_long', 'short']
    triggerws = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15', '16']

    for _ in range(num_libros):
        main_genre = random.choice(list(subgenres.keys()))
        has_subgenre = random.choice(subgenres[main_genre])
        bestseller = random.choice(['FALSE', 'TRUE'])
        famous = 'TRUE' if bestseller == 'TRUE' else random.choice(['FALSE', 'TRUE'])
        actual = random.choice(['FALSE', 'TRUE'])
        cover = random.choice(covers)
        time_read = random.choice(time_reads)
        prob_tw = subgenre_trigger_warning_probabilities[main_genre][has_subgenre]
        tw = np.random.choice(['TRUE', 'FALSE'], p = [prob_tw, 1-prob_tw])
        if tw == 'TRUE':
            triggers = random.sample(trigger_warnings[main_genre], random.randint(1,len(trigger_warnings[main_genre])-1))
            trigger_warning = ""
            for t in triggers:
                trigger_warning += ' '
                trigger_warning  += t

        else: 
            trigger_warning = ""
        libro = instancia_adult(main_genre, has_subgenre, actual, famous, bestseller, cover, time_read, trigger_warning)
        libros.append(libro)

    return libros

def generar_libros_aleatorios(num_baby, num_children, num_teenager, num_adult):
    libros_baby = generar_baby(num_baby)
    libros_children = generar_children(num_children)
    libros_teenager = generar_teenager(num_teenager)
    libros_adult = generar_adult(num_adult)

    return libros_baby + libros_children + libros_teenager + libros_adult

if __name__ == "__main__":
    resp = generar_libros_aleatorios(int(sys.argv[1]),int(sys.argv[2]),int(sys.argv[3]),int(sys.argv[4]))
    output_file = sys.argv[5]
    with open(f'..\jocs_prova\instancies\{output_file}.clp','w') as f:
        
        for i in resp:
            f.write('(definstances instances')
            f.write(i)
            f.write(') \n \n \n')
        