from generador_jp_instancies import *

def generar_ejecucion(respuestas):
    """respuestas -> string con las respuestas separadas por \n"""
    comandos = """
(reset)
(run)
"""
    comandos += respuestas
    return comandos

def generar_baby(num_libros):
    lectores = ""
    temas = ['Sports', 'Music', 'Daily_life', 'Adventures', 'Culture', 'Magic']
    goals = ['Entretainment', 'Learning']
    
    for _ in range(num_libros):
        goal = random.choice(goals)
        illustrated = random.choice(['no', 'yes'])
        theme = random.choice(temas)
        hab_lect = random.choice(['no', 'yes'])
        lector = f"baby\nno\n{theme}\n{goal}\n"
        lectores += generar_ejecucion(lector)

    return lectores

def generar_children(num_libros):
    lectores = ""
    temas = ['Sports', 'Music', 'Daily_life', 'Adventures', 'Culture', 'Magic']
    time_reads = ['medium', 'short']
    
    for _ in range(num_libros):
        illustrated = random.choice(['no', 'yes'])
        theme = random.choice(temas)
        time_read = random.choice(time_reads)
        lector = f"children\nno\n{theme}\n{illustrated}\n{time_read}\n"
        lectores += generar_ejecucion(lector)

    return lectores

def generar_teenager(num_libros):
    lectores = ""
    main_genres = ['Fantasy', 'Adventure', 'Mystery', 'Romance', 'Dystopia', 'Social']
    covers = ['soft', 'hard', 'pocket']
    time_reads = ['medium', 'long', 'very_long', 'short']
    triggerws = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15', '16']
    for _ in range(num_libros):
        main_genre = random.choice(main_genres)
        bestseller = random.choice(['no', 'yes'])
        cover = random.choice(covers)
        time_read = random.choice(time_reads)
        time_read = random.choice(time_reads)
        if main_genre in ['Contemporary','Mystery','Romance','Horror','Science_Fiction']:
            tw = np.random.choice(['yes', 'no'])
            if tw == 'yes':
                triggers = random.sample(triggerws, random.randint(1,len(triggerws)-1))
                trigger_warning = "\n"
                for t in triggers:
                    trigger_warning += ' '
                    trigger_warning  += t
            else: 
                trigger_warning = "\n-"
        else:
            trigger_warning = ""
        lector = f"teenager\nno\n{main_genre}{trigger_warning}\n{cover}\n{bestseller}\n{time_read}\n"
        lectores += generar_ejecucion(lector)

    return lectores

def generar_adult(num_libros):
    lectores = ""
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
    triggerws = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15', '16']

    for _ in range(num_libros):
        main_genre = random.choice(list(subgenres.keys()))
        has_subgenre = random.choice(subgenres[main_genre])
        bestseller = random.choice(['no', 'yes'])
        famous = 'yes' if bestseller == 'yes' else random.choice(['no', 'yes'])
        actual = random.choice(['no', 'yes'])
        cover = random.choice(covers)
        time_read = random.choice(time_reads)
        if main_genre in ['Contemporary','Mystery','Romance','Horror','Science_Fiction']:
            tw = np.random.choice(['yes', 'no'])
            if tw == 'yes':
                triggers = random.sample(triggerws, random.randint(1,len(triggerws)-1))
                trigger_warning = "\n"
                for t in triggers:
                    trigger_warning += ' '
                    trigger_warning  += t
            else: 
                trigger_warning = "\n-"
        else:
            trigger_warning = ""
        lector = f"adult\nno\n{time_read}\n{famous}\n{bestseller}\n{cover}\n{actual}\n{main_genre}{trigger_warning}\n{has_subgenre}\n"
        lectores += generar_ejecucion(lector)

    return lectores

def generar_libros_aleatorios(num_baby, num_children, num_teenager, num_adult):
    libros_baby = generar_baby(num_baby)
    libros_children = generar_children(num_children)
    libros_teenager = generar_teenager(num_teenager)
    libros_adult = generar_adult(num_adult)

    return libros_baby + libros_children + libros_teenager + libros_adult

if __name__ == "__main__":
    resp = generar_libros_aleatorios(int(sys.argv[1]),int(sys.argv[2]),int(sys.argv[3]),int(sys.argv[4]))
    output_file = '..\jocs_prova\jocs_comandes.txt'
    with open(output_file,'w') as f:
        f.write('(load ../main.clp)\n')
        f.write('(load ../instances.clp)')
        f.write(resp)
        f.write('(exit)')
        
