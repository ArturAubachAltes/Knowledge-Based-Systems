(defmodule MAIN (export ?ALL))

;;; ---------------------------------------------------------
;;; turtles/prote_GT_dos.clp
;;; Translated by owl2clips
;;; Translated to CLIPS from ontology turtles/prote_GT_dos.ttl
;;; :Date 20/10/2023 22:52:21

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
    (slot trending_book
        (type SYMBOL)
        (create-accessor read-write))
    (slot triggerw
        (type STRING)
        (create-accessor read-write))
)

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
    (multislot subgenre_of
        (type INSTANCE)
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
    (slot trending_book
        (type SYMBOL)
        (create-accessor read-write))
    (slot triggerw
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
         (public  "")
    )

)

;;****************
;;* DEFFUNCTIONS *
;;****************

(deffunction MAIN::ask-question (?question $?allowed-values)
   (print ?question)
   (bind ?answer (read))
   (if (lexemep ?answer) 
       then (bind ?answer (lowcase ?answer)))
   (while (not (member$ ?answer ?allowed-values)) do
      (print ?question)
      (bind ?answer (read))
      (if (lexemep ?answer) 
          then (bind ?answer (lowcase ?answer))))
   (return (str-cat ?answer)))

(deffunction MAIN::yes-or-no-p (?question)
   (bind ?response (ask-question ?question yes no y n YES NO Yes No))
   (if (or (eq ?response "Yes") (eq ?response "yes") (eq ?response "y") (eq ?response "YES"))
       then (return TRUE) 
       else (return FALSE)))


(deffunction MAIN::compareBooks (?b1 ?b2)
    (bind ?rating1 (send ?b1 get-rating))
    (bind ?rating2 (send ?b2 get-rating))
    (if (and (numberp ?rating1) (numberp ?rating2))
        then
        (if (< ?rating1 ?rating2) then (return TRUE) else (return FALSE))
        else
        (printout t "Error de Comparacion entre Puntuaciones" crlf)
        (return FALSE)
    )
)

(deffunction MAIN::bestbooks (?N)
    (bind ?libros (find-all-instances ((?l Libro)) TRUE))
    (bind ?sorted-libros (sort compareBooks ?libros))
    (bind ?count 0)
    (foreach ?book ?sorted-libros
        (if (< ?count ?N) then
            (printout t "Title: " (send ?book get-title) " | Rating: " (send ?book get-rating) crlf)
            (bind ?count (+ ?count 1))
        )
    )
)

(deffunction MAIN::countInstances (?clase)
    (bind ?num-instances (length$ (find-all-instances ((?i ?clase)) TRUE)))
    (printout t "Hi ha " ?num-instances " instancies de " ?clase "." crlf)
    (return ?num-instances)
)

;funció de sumar punts a score als llibres amb x característica

;;*******************
;;* MÓDUL PRINCIPAL *
;;*******************
; Obtenir input, trobar millor llibre i retornar la solucio


;obtenir imput del lector per definir el seu perfil
(defrule MAIN::init
    (declare (salience 1))
    =>
    (focus INPUT)
)

;obtenir solucio final
(defrule MAIN::end
    =>
    (focus SOLUTION)
    (bestbooks 3)
    (printout t "Fin de la Ejecucion." crlf)
)

;;*******************
;;*   MODUL FINAL   *
;;*******************

(defmodule SOLUTION
    (import MAIN ?ALL)
)

;;*******************
;;*   MODUL INPUT   *
;;*******************
;Informacio del perfil del lector

(defmodule INPUT
    (import MAIN ?ALL)
    (export deffunction basicQ)
)

(deffunction INPUT::basicQ (?question ?options)
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
;;* MÓDUL   BABYS   *
;;*******************

(defmodule BABY 
    (import MAIN ?ALL)
    (import INPUT deffunction basicQ)
)

;;*******************
;;* MÓDUL CHILD     *
;;*******************

(defmodule CHILD
    (import MAIN ?ALL)
    (import INPUT deffunction basicQ)
)

;;*******************
;;*  MÓDUL  TEEN    *
;;*******************

(defmodule TEEN 
    (import MAIN ?ALL)
    (import INPUT deffunction basicQ)
)

;;*******************
;;* MÓDUL   ADULT   *
;;*******************

(defmodule ADULT 
    (import MAIN ?ALL)
    (import INPUT deffunction basicQ)
)

;;*******************
;;* MÓDUL ACTUADORS *
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

(defrule ACT::updatePublic
    (declare (salience 1))
    ?lector <- (object (is-a Lector)
                       (public ?p&~"adult"&~"")
                       (hab_lectura ?h)) ;Que hi hagi algo introduit
                                         ;Que tingui molt hàbit de lectura
    (test (eq ?h TRUE))                 ;Que no sigui adult, ja què llavors no s'actualitza
    =>
    (updateP ?p ?lector)
    (printout t "S'ha actualitzat el public al qual pertanys:" crlf)
    (printout t "   Pertanys al public '" (send ?lector get-public) "'." crlf)
    (printout t crlf)
)

(defrule ACT::podaPublic
    ?lector <- (object (is-a Lector) (public ?p))
    =>
    (countInstances Libro)
    (do-for-all-instances 
        ((?l Libro))
        (neq ?l:public ?p)
        (send ?l delete))
    (countInstances Libro)
)

;


