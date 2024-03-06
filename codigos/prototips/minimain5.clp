(defmodule MAIN (export ?ALL))

;;; ---------------------------------------------------------
;;; turtles/prote_GT_dos.clp
;;; Translated by owl2clips
;;; Translated to CLIPS from ontology turtles/prote_GT_dos.ttl
;;; :Date 20/10/2023 22:52:21

(defclass Ficcion
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
)

(defclass Genero
    (is-a Ficcion)
    (role concrete)
    (pattern-match reactive)
    (slot name_genre
        (type STRING)
        (create-accessor read-write))
)

(defclass Subgenero
    (is-a Genero)
    (role concrete)
    (pattern-match reactive)
    (slot subgenre_of
        (type INSTANCE)
        (create-accessor read-write))
)

(defclass Persona
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
)

(defclass Autor
    (is-a Persona)
    (role concrete)
    (pattern-match reactive)
    (multislot author_of
        (type INSTANCE)
        (create-accessor read-write))
    (slot main_genre
        (type INSTANCE)
        (create-accessor read-write))
    (slot actual
        (type SYMBOL)
        (create-accessor read-write))
    (slot famous
        (type SYMBOL)
        (create-accessor read-write))
    (slot name_author
        (type STRING)
        (create-accessor read-write))
    (slot public
        (type STRING)
        (create-accessor read-write))
)

(defclass Lector
    (is-a Persona)
    (role concrete)
    (pattern-match reactive)
    (slot fav_author
        (type INSTANCE)
        (create-accessor read-write))
    (slot has_subgenre
        (type INSTANCE)
        (create-accessor read-write))
    (slot main_genre
        (type INSTANCE)
        (create-accessor read-write))
    (slot actual
        (type SYMBOL)
        (create-accessor read-write))
    (slot bestseller
        (type SYMBOL)
        (create-accessor read-write))
    (slot cover
        (type STRING)
        (create-accessor read-write))
    (slot famous
        (type SYMBOL)
        (create-accessor read-write))
    (slot goal
        (type STRING)
        (create-accessor read-write))
    (slot hab_lectura
        (type SYMBOL)
        (create-accessor read-write))
    (slot illustrated
        (type SYMBOL)
        (create-accessor read-write))
    (slot language
        (type STRING)
        (create-accessor read-write))
    (slot public
        (type STRING)
        (create-accessor read-write))
    (slot saga
        (type STRING)
        (create-accessor read-write))
    (slot theme
        (type STRING)
        (create-accessor read-write))
    (slot time_read
        (type STRING)
        (create-accessor read-write))
    (multislot triggerw
        (type STRING)
        (create-accessor read-write))
)

(defclass Libro
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (slot has_subgenre
        (type INSTANCE)
        (create-accessor read-write))
    (slot main_genre
        (type INSTANCE)
        (create-accessor read-write))
    (slot actual
        (type SYMBOL)
        (create-accessor read-write))
    (slot bestseller
        (type SYMBOL)
        (create-accessor read-write))
    (slot cover
        (type STRING)
        (create-accessor read-write))
    (slot difficulty
        (type STRING)
        (create-accessor read-write))
    (slot goal
        (type STRING)
        (create-accessor read-write))
    (slot illustrated
        (type SYMBOL)
        (create-accessor read-write))
    (slot language
        (type STRING)
        (create-accessor read-write))
    (slot length
        (type STRING)
        (create-accessor read-write))
    (slot public
        (type STRING)
        (create-accessor read-write))
    (slot punctuation
        (type INTEGER)
        (create-accessor read-write))
    (slot rating
        (type FLOAT)
        (create-accessor read-write))
    (slot saga
        (type STRING)
        (create-accessor read-write))
    (slot theme
        (type STRING)
        (create-accessor read-write))
    (slot title
        (type STRING)
        (create-accessor read-write))
    (multislot triggerw
        (type STRING)
        (create-accessor read-write))
)

(definstances instances
    ([Adventure] of Genero
         (name_genre  "Adventure")
    )

    ([Classic_Romance] of Subgenero
         (subgenre_of  [Romance])
         (name_genre  "Classic_Romance")
    )

    ([Contemporary] of Genero
         (name_genre  "Contemporary")
    )

    ([Cyberpunk] of Subgenero
         (subgenre_of  [Science_Fiction])
         (name_genre  "Cyberpunk")
    )

    ([Dark_Fantasy] of Subgenero
         (subgenre_of  [Fantasy])
         (name_genre  "Dark_Fantasy")
    )

    ([Dystopia] of Genero
         (name_genre  "Dystopia")
    )

    ([Erotic] of Subgenero
         (subgenre_of  [Romance])
         (name_genre  "Erotic")
    )

    ([Fantasy] of Genero
         (name_genre  "Fantasy")
    )

    ([Fiction_History] of Subgenero
         (subgenre_of  [Historical])
         (name_genre  "Fiction_History")
    )

    ([Global] of Genero
        (name_genre "Global")
    )

    ([High_Fantasy] of Subgenero
         (subgenre_of  [Fantasy])
         (name_genre  "High_Fantasy")
    )

    ([Historical] of Genero
         (name_genre  "Historical")
    )

    ([Historical_Romance] of Subgenero
         (subgenre_of  [Romance])
         (name_genre  "Historical_Romance")
    )

    ([Historical_Romance_Contemporary] of Subgenero
         (subgenre_of  [Contemporary])
         (name_genre  "Historical_Romance_Contemporary")
    )

    ([Horror] of Genero
         (name_genre  "Horror")
    )

    ([Mystery] of Genero
         (name_genre  "Mystery")
    )

    ([Paranormal_Horror] of Subgenero
         (subgenre_of  [Horror])
         (name_genre  "Paranormal_Horror")
    )

    ([Paranormal_Mystery] of Subgenero
         (subgenre_of  [Mystery])
         (name_genre  "Paranormal_Mystery")
    )

    ([Police] of Subgenero
         (subgenre_of  [Mystery])
         (name_genre  "Police")
    )

    ([Postapocalyptic_Dystopia] of Subgenero
         (subgenre_of  [Science_Fiction])
         (name_genre  "Postapocalyptic_Dystopia")
    )

    ([Psychological_Horror] of Subgenero
         (subgenre_of  [Horror])
         (name_genre  "Psychological_Horror")
    )

    ([Real_Dystopia] of Subgenero
         (subgenre_of  [Contemporary])
         (name_genre  "Real_Dystopia")
    )

    ([Realistic] of Subgenero
         (subgenre_of  [Historical])
         (name_genre  "Realistic")
    )

    ([Realistic_Fiction] of Subgenero
         (subgenre_of  [Contemporary])
         (name_genre  "Realistic_Fiction")
    )

    ([Romance] of Genero
         (name_genre  "Romance")
    )

    ([Science_Fiction] of Genero
         (name_genre  "Science_Fiction")
    )

    ([Social] of Genero
         (name_genre  "Social")
    )

    ([Space_Opera] of Subgenero
         (subgenre_of  [Science_Fiction])
         (name_genre  "Space_Opera")
    )

    ([Technological] of Subgenero
         (subgenre_of  [Science_Fiction])
         (name_genre  "Technological")
    )

    ([Thriller_Horror] of Subgenero
         (subgenre_of  [Horror])
         (name_genre  "Thiller_Horror")
    )

    ([Thriller_Mystery] of Subgenero
         (subgenre_of  [Mystery])
         (name_genre  "Thriller_Mystery")
    )

    ([Urban_Fantasy] of Subgenero
         (subgenre_of  [Fantasy])
         (name_genre  "Urban_Fantasy")
    )

    ([lector] of Lector
         (triggerw  "")
    )

)
;;****************
;;* DEFFUNCTIONS *
;;****************

(deffunction MAIN::ask-question (?question $?allowed-values)
   (print ?question)
   (bind ?answer (read))
   (while (not (member$ ?answer ?allowed-values)) do
      (print ?question)
      (bind ?answer (read)))
   (return (str-cat ?answer)))



(deffunction MAIN::yes-or-no-p (?question)
   (bind ?response (ask-question ?question yes no y n YES NO Yes No -))
   (if (eq ?response "-")
        then ?response
    else
    (if (or (eq ?response "Yes") (eq ?response "yes") (eq ?response "y") (eq ?response "YES"))
       then (return TRUE) 
       else (return FALSE))
       )
    )

(deffunction MAIN::multi-select-p (?question $?allowed-values)
    (bind ?invalid TRUE)
    (bind ?allowed-values (insert$ ?allowed-values (+ 1 (length$ ?allowed-values)) -)) ; Afegir '-' com una opció vàlida.
    (while ?invalid do
        (print ?question)
        (bind ?input (readline))
        (bind ?answer (create$))
        (bind ?input-list (explode$ ?input))
        (bind ?invalid FALSE)

        (foreach ?item ?input-list
            (if (not (member$ ?item ?allowed-values))
                then
                (printout t ?item " no es una opcion valida." crlf)
                (bind ?invalid TRUE)
            )
        )

        (if (not ?invalid)
            then
            (bind ?answer (create$)
            (foreach ?item ?input-list
                (if (and(member$ ?item ?allowed-values)(neq ?item "-"))
                    then
                    (bind ?answer (insert$ ?answer (+ 1 (length$ ?answer)) ?item))
                )
            ))
        )
    )

    (return ?answer)
)


(deffunction MAIN::compareBooks (?b1 ?b2)
    (bind ?rating1 (send ?b1 get-punctuation))
    (bind ?rating2 (send ?b2 get-punctuation))
    (if (and (numberp ?rating1) (numberp ?rating2))
        then
        (if (< ?rating1 ?rating2) then (return TRUE) else (return FALSE))
        else
        (printout t "Error de Comparacion entre Puntuaciones" crlf)
        (return FALSE)
    )
)

(deffunction MAIN::showProperties (?book)
(printout t "Title: " (send ?book get-title) " | Puntcuation: " (send ?book get-punctuation) crlf)
)

(deffunction MAIN::bestbooks (?N)
    (bind ?libros (find-all-instances ((?l Libro)) TRUE))
    (bind ?sorted-libros (sort compareBooks ?libros))
    (bind ?count 0)
    (foreach ?book ?sorted-libros
        (if (< ?count ?N) then
            (showProperties ?book)
            (bind ?count (+ ?count 1))
        )
    )
)

(deffunction MAIN::countInstances (?clase)
    (bind ?num-instances (length$ (find-all-instances ((?i ?clase)) TRUE)))
    (printout t "Hi ha " ?num-instances " instancies de " ?clase "." crlf)
    (return ?num-instances)
)


;;*******************
;;* MoDUL PRINCIPAL *
;;*******************


(defrule MAIN::init
    (declare (salience 1))
    =>
    (focus INPUT)
)

;obtenir solucio final
(defrule MAIN::end
    =>
    (focus SOLUTION)
    (printout t "Fin de la Ejecucion." crlf)
)


;;*******************
;;*   MODUL FINAL   *
;;*******************

(defmodule SOLUTION
    (import MAIN ?ALL)
)

(defrule SOLUTION::endMessage
    (declare (salience -1))
    =>
    (printout t "
Gracies per haver respost les preguntes!

Els llibres seleccionats són els seguents:
" crlf)
)

(defrule SOLUTION::theme_punctuation
    ?lector <- (object (is-a Lector)(theme ?t&~""))
    =>
    (bind ?llibres (find-all-instances ((?l Libro)) (eq ?l:theme ?t)))
    ; (printout t 'Theme punctuation'  crlf )
    (progn$ (?l ?llibres) 
    (bind ?p (send ?l get-punctuation))
    (bind ?p (+ ?p 10))
    (send ?l put-punctuation ?p))  
)

(defrule SOLUTION::goal_punctuation
    ?lector <- (object (is-a Lector)(goal ?g&~""))
    =>
    (bind ?llibres (find-all-instances ((?l Libro)) (eq ?l:goal ?g))) 
    ; (printout t 'Goal punctuation' crlf)
    (progn$ (?l ?llibres) 
    (bind ?p (send ?l get-punctuation))
    (bind ?p (+ ?p 10))
    (send ?l put-punctuation ?p))
)

(defrule SOLUTION::ilustrated_punctuation
    ?lector <- (object (is-a Lector)(illustrated ?i&~nil))
    =>
    (bind ?llibres (find-all-instances ((?l Libro)) (eq ?l:illustrated ?i) ))
    ; (printout t 'Ilustration punctuation' crlf )
    (progn$ (?l ?llibres) 
    (bind ?p (send ?l get-punctuation))
    (bind ?p (+ ?p 10))
    (send ?l put-punctuation ?p))  
)

(defrule SOLUTION::length_punctuation
    ?lector <- (object (is-a Lector)(time_read ?tr&~""))
    =>
    (bind ?llibres (find-all-instances ((?l Libro)) (eq ?l:length ?tr)))  
    ; (printout t 'Length punctuation:' crlf )
    (progn$ (?l ?llibres) 
    (bind ?p (send ?l get-punctuation))
    (bind ?p (+ ?p 10))
    (send ?l put-punctuation ?p))  
)

(defrule SOLUTION::cover_punctuation
    ?lector <- (object (is-a Lector)(cover ?c&~""))
    =>
    (bind ?llibres (find-all-instances ((?l Libro)) (eq ?l:cover ?c)))
    ; (printout t 'Cover punctuation:' crlf)
    (progn$ (?l ?llibres) 
    (bind ?p (send ?l get-punctuation))
    (bind ?p (+ ?p 10))
    (send ?l put-punctuation ?p))  
)

(defrule SOLUTION::generes_punctuation
    ?lector <- (object (is-a Lector)(main_genre ?m&~[nil]))
    (test (neq ?m [Global]))
    =>
    (bind ?llibres (find-all-instances ((?l Libro)) (eq ?l:main_genre ?m)))  
    ; (printout t 'Genre punctuation:'  crlf)
    (progn$ (?l ?llibres) 
    (bind ?p (send ?l get-punctuation))
    (bind ?p (+ ?p 10))
    (send ?l put-punctuation ?p))  
)

(defrule SOLUTION::bestseller_punctuation
    ?lector <- (object (is-a Lector)(bestseller ?m&~nil))
    =>
    (bind ?llibres (find-all-instances ((?l Libro)) (eq ?l:bestseller ?m)))  
    ; (printout t 'Bestseller punctuation:'  crlf)
    (progn$ (?l ?llibres) 
    (bind ?p (send ?l get-punctuation))
    (bind ?p (+ ?p 10))
    (send ?l put-punctuation ?p))  
)

(defrule SOLUTION::famous_punctuation
    ?lector <- (object (is-a Lector)(public ?public)(famous ?f&~nil))
    =>
    (bind ?autors (find-all-instances ((?a Autor)) (eq ?a:famous ?f))) ;Troba tots els autors famosos 
    ; (printout t 'Famous punctuation:' crlf)
    (progn$ (?a ?autors)
    (bind ?p_a (send ?a get-public))
    (if (eq ?p_a ?public) then                      
        (bind ?books (send ?a get-author_of))
        (progn$ (?llibre ?books)
            (bind ?p (send ?llibre get-punctuation))
            (bind ?p (+ ?p 10))
            (send ?llibre put-punctuation ?p))))
            
)


(defrule SOLUTION::actual_punctuation
    ?lector <- (object (is-a Lector)(actual ?act&~nil))
    =>
    (bind ?llibres (find-all-instances ((?l Libro)) (eq ?l:actual ?act)))  
    ; (printout t 'Actual punctuation:'  crlf)
    (progn$ (?l ?llibres) 
    (bind ?p (send ?l get-punctuation))
    (bind ?p (+ ?p 10))
    (send ?l put-punctuation ?p))  
)



(defrule SOLUTION::subgenre_punctuation
    ?lector <- (object (is-a Lector)(has_subgenre ?sg&~[nil]))
    =>
    (bind ?llibres (find-all-instances ((?l Libro)) (eq ?l:has_subgenre ?sg)))  
    ; (printout t 'Subgenre punctuation:' crlf)
    (progn$ (?l ?llibres) 
    (bind ?p (send ?l get-punctuation))
    (bind ?p (+ ?p 10))
    (send ?l put-punctuation ?p))  
)


(defrule SOLUTION::resultat 
    (declare (salience -2))
   =>
   (bestbooks 3)
)

;;*******************
;;*   MODUL INPUT   *
;;*******************
;Informacio del perfil del lector

(defmodule INPUT
    (import MAIN ?ALL)
    (export deffunction basicQ basicQskip)
)

(deffunction INPUT::basicQ (?question ?options)
    (bind ?response (ask-question ?question ?options))
    (return ?response)
)

(deffunction INPUT::basicQskip (?question ?options)
    (bind ?options (insert$ ?options (+ (length$ ?options) 1) -))
    (printout t "Opcions: " ?options crlf)
    (bind ?response (ask-question ?question ?options))
    (return ?response)
)

(defrule INPUT::basicInput
    (declare (salience 1))
    =>
    (focus BASE)
)

(defrule INPUT::cridaPublic
    ?lector <- (object (is-a Lector) (public ?p&~""))
    =>
    (switch ?p
        (case "baby" then (focus BABY))
        (case "children" then (focus CHILD))
        (case "teenager" then (focus TEEN))
        (default (focus ADULT))
    )
)

;;*******************
;;*   MODUL  BASE   *
;;*******************
; Modul per a les preguntes basiques

(defmodule BASE
    (import MAIN ?ALL)
    (import INPUT ?ALL)
)

(defrule BASE::askPublic 
    (declare (salience 1))
    ?lector <- (object (is-a Lector) (public ""))
    =>
    (bind ?options baby children teenager adult)
    (bind ?public (basicQ "
A quin grup d'edat pertanys? 
    Si tens entre 4 i 6 anys tria l'opcio 'baby'
    Si tens entre 7 i 14 anys tria l'opcio 'children'
    Si tens entre 15 i 18 anys tria l'opcio 'teenager'
    Si tens mes de 18 anys tria l'opcio 'adult'

>>> " ?options))
    (send ?lector put-public ?public)
    (printout t "Public assignat correctament." crlf)
    (printout t "Public introduit: " (send ?lector get-public) crlf)
)

(defrule BASE::askHabit
    ?lector <- (object (is-a Lector) (hab_lectura nil))
    =>
    (bind ?hab_lectura (yes-or-no-p "
Tens habit de lectura? Es a dir, llegeixes en els teus temps lliures, quan vas de viatge... de manera coninuada?
    Respon 'Yes' o 'No'.

>>> "))
    (send ?lector put-hab_lectura ?hab_lectura)
    (printout t "S'ha rebut correctament la teva resposta:" crlf)
    (printout t "   " (send ?lector get-hab_lectura) crlf crlf)
    (focus ACT)
)

;;*******************
;;* MODUL   BABYS   *
;;*******************

(defmodule BABY 
    (import MAIN ?ALL)
    (import INPUT deffunction basicQ basicQskip)
)

(defrule BABY::atributs
   ?lector <- (object (is-a Lector))  
    =>
    (send ?lector put-illustrated TRUE)
    (send ?lector put-cover "hard")
    (send ?lector put-time_read "short"))

(defrule BABY::tematica 
    (declare (salience 2))
    ?lector <- (object (is-a Lector) (theme ""))
    =>
    (bind ?options Sports Music Adventures Culture Magic Daily_life)
    (bind ?theme (basicQskip "
De quina tematica t'agradaria que fos el llibre? 
    Si t'agradaria que el teu llibre fos relacionat amb els esports tria l'opcio 'Sports'
    Si t'agradaria que el teu llibre fos relacionat amb les cancons i la musica tria l'opcio 'Music'
    Si t'agradaria que el teu llibre expliques histories emocionants tria l'opcio 'Adventures'
    Si t'agradaria que el teu llibre fos relacionat amb com es el mon tria l'opcio 'Culture'
    Si t'agradaria que el teu llibre fos relacionat amb la magia tria l'opcio 'Magic'
    Si t'agradaria que el teu llibre expliques fets del dia a dia tria l'opcio 'Daily_life'
Si vols saltar-te aquesta pregunta, escriu '-'.

>>> " ?options))
    (if (eq ?theme "-")
        then 
        (printout t "Has decidit saltar-te aquesta pregunta." crlf)
    else
        (send ?lector put-theme ?theme)
        (printout t "Tema assignat correctament." crlf)
        (printout t "Tema preferit: " ?theme crlf)
    )

)

(defrule BABY::goal 
    (declare (salience 1))
    ?lector <- (object (is-a Lector) (goal "")) 
    =>
    (bind ?options Learning Entretainment)
    (bind ?goal (basicQskip "
Quina es la finalitat d'aquest llibre? 
    Si vols el llibre per aprendre sobre qualsevol tematica tria l'opcio 'Learning'
    Si vols el llibre per passar una bona estona tria l'opcio 'Entretainment'
Si vols saltar-te aquesta pregunta, escriu '-'.

>>> " ?options))
    (if (eq ?goal "-") then
        (printout t "Has decidit saltar-te aquesta pregunta." crlf)
    else
        (send ?lector put-goal ?goal)
        (printout t "Finalitat assignada correctament." crlf)
        (printout t "Finalitat introduida: " (send ?lector get-goal) crlf)
    )
)

;;*******************
;;* MODUL   CHILD   *
;;*******************
(defmodule CHILD 
    (import MAIN ?ALL)
    (import INPUT deffunction basicQ basicQskip)
)

(defrule CHILD::atributs
   ?lector <- (object (is-a Lector))  
    =>
    (send ?lector put-cover "hard"))


(defrule CHILD::tema_preferit
    (declare (salience 1))
    ?lector <- (object (is-a Lector) (theme ""))
    => 
    (bind ?options Sports Music Daily_life Adventures Culture Magic Sport)
    (bind ?theme (basicQ "
Quines son les teves aficions? 
    Si t'agrada l'esport i les activitats fisiques, selecciona 'Sports'.
    Si ets un amant de la musica i els concerts, selecciona 'Music'.
    Si prefereixes les histories sobre la vida quotidiana, selecciona 'Daily_life'.
    Si t'agrada explorar i viure aventures, selecciona 'Adventures'.
    Si t'estimes la cultura i l'art, selecciona 'Culture'.
    Si t'agrada la magia i el mon del fantastic, selecciona 'Magic'.
Si vols saltar-te aquesta pregunta, escriu '-'.

>>> " ?options))

    (if (eq ?theme "-")
        then 
        (printout t "Has decidit saltar-te aquesta pregunta." crlf)
    else
        (send ?lector put-theme ?theme)
        (printout t "Tema assignat correctament." crlf)
        (printout t "Tema preferit: " ?theme crlf)
    )
)

(defrule CHILD::llibre_illustrat
    ?lector <- (object (is-a Lector) (illustrated nil))
    =>
    (bind ?illustrated (yes-or-no-p "
Busques un llibre amb illustracions?
    Respon 'Yes' si desitges un llibre amb illustracions, o 'No' si prefereixes un llibre sense illustracions.
Si vols saltar-te aquesta pregunta, escriu '-'.

>>> "))

    (if (eq ?illustrated "-")
        then 
        (printout t "Has decidit saltar-te aquesta pregunta." crlf)
    else
        (send ?lector put-illustrated ?illustrated)
        (printout t "La teva resposta ha estat rebuda correctament:" crlf)
        (printout t "   Llibre amb il.lustracions: " ?illustrated crlf crlf)
    )
)

(defrule CHILD::longitud
    (declare (salience 1))
    ?lector <- (object (is-a Lector) (time_read ""))
    => 
    (bind ?options short medium)
    (bind ?time_read (basicQskip "
Quant temps tens per llegir? 
    Si disposes de poc temps i desitges llibres curts, selecciona 'short'.
    Si tens bastant temps per llegir, selecciona 'medium'.
Si vols saltar-te aquesta pregunta, escriu '-'.

>>> " ?options))
    (if (eq ?time_read "-")
        then 
        (printout t "Has decidit saltar-te aquesta pregunta." crlf)
    else 
        (send ?lector put-time_read ?time_read)
        (printout t "Llargaria del llibre: " ?time_read crlf)
    )
)
;; ¿Has leido libros de alguna coleccion o saga? -- saga


;;*******************
;;*  MODUL  TEEN    *
;;*******************

(defmodule TEEN 
    (import MAIN ?ALL)
    (import INPUT deffunction basicQ basicQskip)
)

(defrule TEEN::atributs
   ?lector <- (object (is-a Lector))  
    =>
    (send ?lector put-illustrated FALSE))

(defrule TEEN::genere_teen
    (declare (salience 1))
    ?lector <- (object (is-a Lector) (main_genre [nil]))
    => 
    (bind ?options Fantasy Adventure Romance Mystery Dystopia Social)
    (bind ?genre (basicQskip "
Quin genere de llibre estas buscant? 
    Si t'agradaria que el teu llibre fos d'aventures 'Adventure'
    Si t'agradaria que el teu llibre fos  de magia i fantasia tria l'opcio 'Fantasy'
    Si t'agradaria que el teu llibre fos sobre una historia d'amor tria l'opcio 'Romance'
    Si t'agradaria que el teu llibre fos sobre un misteri a resoldre tria l'opcio 'Mystery'
    Si t'agradaria que el teu llibre fos sobre un mon que ha canviat a una situacio nova i distopica tria l'opcio 'Dystopy'
    Si t'agradaria que el teu llibre expliques fets del dia a dia amb temes socials tria l'opcio 'Social'
Si vols saltar-te aquesta pregunta, escriu '-'.

>>> " ?options))
    (if (eq ?genre "-") 
        then
        (printout t "Has decidit saltar-te aquesta pregunta." crlf)
    else
        (printout t "Genere seleccionat: " ?genre crlf)
        (bind ?genrei (find-instance 
                                ((?g Genero)) 
                                (eq (send ?g get-name_genre) ?genre)
                              )) 
        (send ?lector put-main_genre ?genrei)
        (printout t "Genere assignat correctament." crlf)
        (printout t "   " (send ?lector get-main_genre) crlf crlf)
        (if (or (eq ?genre "Romance")
            (eq ?genre "Mystery"))
            then
            (focus TRIGGER_W))
    )
)


(defrule TEEN::tipus_de_coberta
    (declare (salience 1))
    ?lector <- (object (is-a Lector) (cover ""))
    => 
    (bind ?options hard soft pocket)
    (bind ?cover (basicQskip "
Quin tipus de coberta prefereixes? 
    Si prefereixes llibres amb tapa dura, selecciona 'hard'.
    Si prefereixes llibres amb tapa blanda, selecciona 'soft'.
    Si prefereixes l'edicio de butxaca, selecciona 'pocket'.
Si vols saltar-te aquesta pregunta, escriu '-'.

>>> " ?options))
    (if (eq ?cover "-") 
        then
        (printout t "Has decidit saltar-te aquesta pregunta." crlf)
    else
        (send ?lector put-cover ?cover)
        (printout t "Tipus de coberta assignat correctament." crlf)
        (printout t "Tipus de coberta: " (send ?lector get-cover) crlf)
    )
)


(defrule TEEN::llibre_trendy
    (declare (salience 1))
    ?lector <- (object (is-a Lector) (bestseller nil))
    =>
    (bind ?bestseller (yes-or-no-p "
T'agraden els llibres que actualment son tendencia o estan de moda?
    Respon 'Yes' o 'No'.
Si vols saltar-te aquesta pregunta, escriu '-'.

>>> "))
    (if (eq ?bestseller "-") 
        then
        (printout t "Has decidit saltar-te aquesta pregunta." crlf)
    else
        (send ?lector put-bestseller ?bestseller)
        (printout t "S'ha rebut correctament la teva resposta:" crlf)
        (printout t "   " (send ?lector get-bestseller) crlf crlf)
    )
)


(defrule TEEN::longitud
    (declare (salience 1))
    ?lector <- (object (is-a Lector) (time_read ""))
    => 
    (bind ?options short medium long very_long)
    (bind ?time_read (basicQskip "
Quant temps tens per llegir? 
    Si disposes de poc temps i desitges llibres curts, selecciona 'short'.
    Si tens un temps moderat per llegir i busques llibres de longitud mitjana, selecciona 'medium'.
    Si tens prou de temps i vols llibres llargs, selecciona 'long'.
    Si tens molt de temps i busques llibres molt llargs, selecciona 'very_long'.
Si vols saltar-te aquesta pregunta, escriu '-'.

>>> " ?options))
    (if (eq ?time_read "-") 
        then
        (printout t "Has decidit saltar-te aquesta pregunta." crlf)
    else
        (send ?lector put-time_read ?time_read)
        (printout t "Llargaria del llibre: " ?time_read crlf)
    )
)
;;*******************
;;* MoDUL   ADULT   *
;;*******************

(defmodule ADULT 
    (import MAIN ?ALL)
    (import INPUT deffunction basicQ basicQskip)
)


(defrule ADULT::atributs
   ?lector <- (object (is-a Lector))  
    =>
    (send ?lector put-illustrated FALSE))


(defrule ADULT::temps_de_lectura
    (declare (salience 3))
    ?lector <- (object (is-a Lector) (time_read ""))
    => 
    (bind ?options short medium long very_long)
    (bind ?time_read (basicQskip "
Quin temps tens per llegir? 
    Si disposes de poc temps i desitges llibres curts, selecciona 'short'.
    Si tens un temps moderat per llegir i busques llibres de longitud mitjana, selecciona 'medium'.
    Si tens prou de temps i vols llibres llargs, selecciona 'long'.
    Si tens molt de temps i busques llibres molt llargs, selecciona 'very_long'.
Si vols saltar-te aquesta pregunta, escriu '-'.

>>> " ?options))
    (if (eq ?time_read "-") 
        then
        (printout t "Has decidit saltar-te aquesta pregunta." crlf)
    else
        (send ?lector put-time_read ?time_read)
        (printout t "Temps de lectura assignat correctament." crlf)
        (printout t "Temps de lectura: " (send ?lector get-time_read) crlf)
    )
)

(defrule ADULT::askFamous
    (declare (salience 2))
    ?lector <- (object (is-a Lector) (famous nil))
    =>
    (bind ?famous (yes-or-no-p "
Busques un llibre de algun autor considerat famos
    Respon 'Yes' o 'No'.
Si vols saltar-te aquesta pregunta, escriu '-'.

>>> "))
    (if (eq ?famous "-")
        then
        ;(assert (avoid-triggers (value TRUE))) ; Aquí 
        (printout t "Has decidit saltar-te aquesta pregunta." crlf)
    else
        ;(assert (avoid-triggers (value TRUE))) ; Aquí 
        (send ?lector put-famous ?famous)
        (printout t "S'ha rebut correctament la teva resposta:" crlf)
        (printout t "   " (send ?lector get-famous) crlf crlf)
    )
)




(defrule ADULT::interes_bestseller
    (declare (salience 1))
    ?lector <- (object (is-a Lector) (famous ?f) (bestseller nil))
    (test (or (eq ?f TRUE) (eq ?f nil)))
    =>
    
    ;(assert (avoid-triggers (value FALSE))) ; Esto eliminará el hecho después de que se utilice, para evitar que esta regla se dispare múltiples vecesind ?bestseller (yes-or-no-p "
    (bind ?bestseller (yes-or-no-p "
T'interessa llegir best sellers?
    Respon 'Yes' si t'interessen, 'No' si no t'interessen.
Si vols saltar-te aquesta pregunta, escriu '-'.

>>> "))
    (if (eq ?bestseller "-")
        then
        (printout t "Has decidit saltar-te aquesta pregunta." crlf)
    else
        (send ?lector put-bestseller ?bestseller)
        (printout t "bestseller assignat correctament." crlf)
        (printout t "bestseller: " (send ?lector get-bestseller) crlf)
    )
)

(defrule ADULT::tipus_de_coberta
    (declare (salience 1))
    ?lector <- (object (is-a Lector) (cover ""))
    => 
    (bind ?options hard soft pocket)
    (bind ?cover (basicQskip "
Quin tipus de coberta prefereixes? 
    Si prefereixes llibres amb tapa dura, selecciona 'hard'.
    Si prefereixes llibres amb tapa blanda, selecciona 'soft'.
    Si prefereixes l'edicio de butxaca, selecciona 'pocket'.
Si vols saltar-te aquesta pregunta, escriu '-'.

>>> " ?options))
    (if (eq ?cover "-")
        then
        (printout t "Has decidit saltar-te aquesta pregunta." crlf)
    else
        (send ?lector put-cover ?cover)
        (printout t "S'ha rebut correctament la teva resposta:" crlf)
        (printout t "   " (send ?lector get-cover) crlf crlf)
    )
)


(defrule ADULT::preferencia_novela
    (declare (salience 1))
    ?lector <- (object (is-a Lector) (actual nil))
    =>
    (bind ?actual (yes-or-no-p "
T'agraden les novelles actuals? O prefereixes les classiques?
    Respon 'Yes' si prefereixes les actuals, 'No' si prefereixes les classiques.
Si vols saltar-te aquesta pregunta, escriu '-'.

>>> "))
    (send ?lector put-actual ?actual)
    (printout t "S'ha rebut correctament la teva resposta:" crlf)
    (printout t "   " (send ?lector get-actual) crlf crlf)
)


(defrule ADULT::genere_adult
    (declare (salience 1))
    ?lector <- (object (is-a Lector) (main_genre [nil]))
    => 
    (bind ?options Contemporary Historical Mystery Fantasy Romance Science_Fiction Horror)
    (bind ?main_genre (basicQskip "
Quin genere de llibre estas buscant? 
    Si t'agradaria llegir una obra contemporania, selecciona 'Contemporary'.
    Si t'interessen les noveles ambientades en fets historics, selecciona 'Historical'.
    Si vols resoldre un misteri mentre llegeixes, selecciona 'Mystery'.
    Si t'agrada la magia i les terres fantastiques, selecciona 'Fantasy'.
    Si busques una historia d'amor, selecciona 'Romance'.
    Si t'agrada explorar futurs i tecnologies imaginaries, selecciona 'Science_Fiction'.
    Si t'agrada passar por mentre llegeixes, selecciona 'Horror'.
Si vols saltar-te aquesta pregunta, escriu '-'.

>>> " ?options))
    (if (eq ?main_genre "-")
        then
        (printout t "Has decidit saltar-te aquesta pregunta." crlf)
        (send ?lector put-main_genre [Global])
    else
        (bind ?genrei (find-instance
                            ((?g Genero))
                            (eq (send ?g get-name_genre) ?main_genre) 
                          )) 
        (send ?lector put-main_genre ?genrei)
        (printout t "Genere assignat correctament." crlf)
        (printout t "   " (send ?lector get-main_genre) crlf crlf)
    )
)

(defrule activaTriggerW
    (declare (salience 1))
    ?lector <- (object (is-a Lector)(main_genre ?g&~[nil]))
    (test (or (eq ?g [Global])
              (eq ?g [Contemporary])
              (eq ?g [Mystery])
              (eq ?g [Romance])
              (eq ?g [Horror])
              (eq ?g [Science_Fiction])
    ))
    =>
    (focus TRIGGER_W)
)


(deffunction ADULT::subg-disp (?genre_name)
    ; Inicializar la lista de subgéneros elegidos
    (bind ?subgenres_chosen (create$))
    
    (bind ?subgenres (find-all-instances ((?s Subgenero)) TRUE))
    
    (foreach ?s ?subgenres
        (bind ?sname (send ?s get-name_genre))
        (bind ?g (send ?s get-subgenre_of))
        (bind ?gname (send ?g get-name_genre))
        
        (if (eq ?gname ?genre_name) 
            then 
                (bind ?sname (sym-cat ?sname))
                (printout t "  " ?sname crlf)
                ; Añadir el subgénero a la lista de subgéneros elegidos usando insert$ de manera correcta
                (bind ?subgenres_chosen (insert$ ?subgenres_chosen (+ (length$ ?subgenres_chosen) 1) ?sname))
        )
    )
    
    ; Imprimir o retornar la lista de subgéneros elegidos si es necesario
    (printout t "Subgeneros elegidos: " ?subgenres_chosen crlf)
    (return ?subgenres_chosen)
)


(defrule ADULT::subgenere
    (declare (salience 3))
    ?lector <- (object (is-a Lector) 
                      (main_genre ?main_genre&~[nil]))
    (test (neq ?main_genre [Global]))
    ;(test (bind ?subgenres 
    ;            (find-all-instances ((?l Subgenero) (?r Lector))
    ;                (eq ?l:subgenre_of ?r:main_genre))))
    
    =>
    (bind ?genre_name (send ?main_genre get-name_genre))
    (printout t "
    Quin subgenere t'agradaria? Pel genere escollit (" ?genre_name ") tens les opcions que es mostren a continuacio:" crlf crlf)
    (bind ?subgeneres (subg-disp ?genre_name))

    (bind ?sub_genre (basicQskip "
>>> " ?subgeneres))
    (printout t "Subgenere preferit: " ?sub_genre crlf)
    (bind ?sub_genre (str-cat ?sub_genre))

    (if (eq ?sub_genre "-")
        then
        (printout t "Has decidit saltar-te aquesta pregunta." crlf)
    else
        (bind ?sub_genrei (find-instance
                                ((?g Subgenero))
                                (eq (send ?g get-name_genre) ?sub_genre) 
                            ))

        (send ?lector put-has_subgenre ?sub_genrei)
        (bind ?subgenere_elegit (send ?lector get-has_subgenre))
        (printout t "Subgenere assignat correctament." crlf)
        (printout t "Subgenere assignat: " ?subgenere_elegit crlf)
    )

)



; ;;**************************
; ;;*  MODUL  TRIGGER WARNING*
; ;;**************************
; ;Realitza accions sobre els atributs

 (defmodule TRIGGER_W 
     (import MAIN ?ALL)
     (import INPUT deffunction basicQ basicQskip)

 )

(defrule TRIGGER_W::trigger_avoid
    (declare (salience 5))
    ?lector <- (object (is-a Lector) (triggerw ""))
    =>
    (bind ?options 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16)
    (bind ?triggers (multi-select-p "
Quins triggers t'agradaria evitar? 
    Escriu '1' per evitar continguts amb abusos.
    Escriu '2' per evitar l'assetjament sexual.
    Escriu '3' per evitar continguts amb cosos nuus.
    Escriu '4' per evitar l'homofobia o la transfobia.
    Escriu '5' per evitar malalties mentals o discriminacio contra persones amb discapacitats.
    Escriu '6' per evitar el contingut pornografic.
    Escriu '7' per evitar l'autolesio o el suicidi.
    Escriu '8' per evitar trastorns alimentaris o fobia a la obesitat.
    Escriu '9' per evitar el racisme i les ofenses racials.
    Escriu '10' per evitar la violencia.
    Escriu '11' per evitar la sang i la violencia grafica.
    Escriu '12' per evitar el segrest i l'abduccio.
    Escriu '13' per evitar l'assassinat.
    Escriu '14' per evitar l'abus infantil, la pedofilia i l'incest.
    Escriu '15' per evitar la crueltat cap als animals.
    Escriu '16' per evitar la tortura.

Escriu tots els triggers que vols evitar, separats per un espai.

>>> " ?options))
    (if (eq ?triggers "-")
        then
        (printout t "Has decidit saltar-te aquesta pregunta." crlf)
    else
        (send ?lector put-triggerw ?triggers)
        (printout t "Triggers assignats correctament." crlf)
        (printout t "Triggers per evitar: " (send ?lector get-triggerw) crlf)
    )
)


(defrule TRIGGER_W::podaTriggers
    (declare (salience 4))
    ?lector <- (object  (is-a Lector) 
                        (public ?p))
    =>
    (countInstances Libro)
    (printout t "TW del lector" crlf)
    (bind ?llibres (find-all-instances ((?l Libro)) (eq ?l:public ?p)))
    (bind ?trig (send ?lector get-triggerw))
    (printout t ?trig crlf)
    (progn$ (?l ?llibres)   
        (bind ?tw (send ?l get-triggerw)) 
        (bind ?comptador FALSE)
        (progn$ (?t ?tw)
            (if (member$ ?t ?trig) then
                (bind ?comptador TRUE)))
        (if (eq ?comptador TRUE) then (send ?l delete))
        ;(printout t ?comptador crlf)
       )
    (countInstances Libro)
)

;: (nth$ <índice> <lista>)

;;*******************
;;* MODUL ACTUADORS *
;;*******************
;Realitza accions sobre els atributs

(defmodule ACT 
    (import MAIN ?ALL)
)

(deffunction ACT::updateP (?public ?lector)
    (switch ?public
        (case "baby" then (send ?lector put-public "children"))
        (case "children" then (send ?lector put-public "teenager"))
        (case "teenager" then (send ?lector put-public "adult"))
    )
    (send ?lector put-hab_lectura "Neutral")
)

(defrule ACT::inici
(declare (salience 2))
=>
(printout t "Esteim a punt d'actualitzar el public" crlf)
)

(defrule ACT::updatePublic
    (declare (salience 1))
    ?lector <- (object (is-a Lector)
                       (public ?p&~"adult"&~"")
                       (hab_lectura ?h)) ;Que hi hagi algo introduit
                                         ;Que tingui molt habit de lectura
    (test (eq ?h TRUE))                 ;Que no sigui adult, ja que llavors no s'actualitza
    =>
    (updateP ?p ?lector)
    (printout t "S'ha actualitzat el public al qual pertanys:" crlf)
    (printout t "   Pertanys al public '" (send ?lector get-public) "'." crlf)
    (printout t crlf)
)

(defrule ACT::podaPublic
    ?lector <- (object  (is-a Lector) 
                        (public ?p))
    =>
    (countInstances Libro)
    (do-for-all-instances 
        ((?l Libro))
        (neq ?l:public ?p)
        (send ?l delete)
        )
    (countInstances Libro)
)