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
       then (return "Yes") 
       else (return "No")))

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

;;*******************
;;* MÓDUL PRINCIPAL *
;;*******************

(defrule MAIN::init
    (declare (salience 1))
    =>
    (focus INPUT)
)

(defrule MAIN::end
    =>
    (bestbooks 3)
    (printout t "Fin de la Ejecucion." crlf)
)

;;*******************
;;*   MODUL INPUT   *
;;*******************

(defmodule INPUT
    (import MAIN ?ALL)
)
