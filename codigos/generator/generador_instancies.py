import pandas as pd

#Llegir bases de dades
au = pd.read_csv('authors.csv')
ll = pd.read_csv('books.csv')
au = au.drop('Unnamed: 0',axis=1)
ll = ll.drop('Unnamed: 0',axis=1)

# Eliminar llibres amb el mateix títol i quedar-nos la primera aparició
ll.drop_duplicates(subset='title', keep='first', inplace=True, ignore_index=True)

with open('instances.clp','w') as f:
    # Escriure llibres a clips
    f.write('(definstances libros')
    for i in range(len(ll)):
        l = ll.iloc[i]
        ilustrated = str(l['illustrated']).lower()
        isactual = str(l['isactual']).lower()
        bestseller = str(l['bestseller']).lower()
        out = f""" 
    (libro_{i} of Libro
        (has_subgenre  [{l['subgenre']}])
        (main_genre  [{l['genre']}])
        (saga "{l['saga']}")
        (bestseller  "{bestseller}")
        (cover  "{l['cover']}")
        (difficulty  "{l['difficulty']}")
        (goal  "{l['goal']}")
        (illustrated  "{ilustrated}")
        (actual  "{isactual}")
        (language  "{l['language']}")
        (length  "{l['length']}")
        (public  "{l['public']}")
        (rating  {l['rating']})
        (theme  "{l['theme']}")
        (title  "{l['title']}")
        (triggerw  "{l['triggerw']}")
        (punctuation {l['rating']})
        )
        """
        f.write(out)
    f.write(')')

    # Escriure Autors a clips
    f.write('(definstances autores')
    for i in range(len(au)):
        a = au.iloc[i]
        libros = a['books']
        libros = libros.replace('Book(',"'")
        libros = libros.replace(')',"'")
        lista = eval(libros)
        books = ''
        for lib in lista:
            ide = ll[ll['title']==lib].index[0]
            books += f'[libro_{ide}] '
        out = f""" 
    (autor_{i} of Autor
        (main_genre "[{a['genre']}]")
        (author_of  {books})
        (famous  "{a['famous']}")
        (name_author  "{a['name']}")
        (public "{a['public']}")
        (actual "{a['isactual']}")
            
        )
        """
        f.write(out)
    f.write(')')
    
