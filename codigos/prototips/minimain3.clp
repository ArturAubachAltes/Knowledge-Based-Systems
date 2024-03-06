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
;    (if (lexemep ?answer) 
;        then (bind ?answer (lowcase ?answer)))
   (while (not (member$ ?answer ?allowed-values)) do
      (print ?question)
      (bind ?answer (read)))
    ;    (if (lexemep ?answer) 
    ;        then (bind ?answer (lowcase ?answer)))
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

;funcio de sumar punts a score als llibres amb x caracteristica

;;*******************
;;* MoDUL PRINCIPAL *
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
    (printout t "Fin de la Ejecucion." crlf)
)

;;*******************
;;*   MODUL FINAL   *
;;*******************

(defmodule SOLUTION
    (import MAIN ?ALL)
)

(defrule SOLUTION::resultat
   =>
   (bestbooks 3))

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
;;* MODUL   BABYS   *
;;*******************

(defmodule BABY 
    (import MAIN ?ALL)
    (import INPUT deffunction basicQ)
)

(defrule BABY::tematica 
    (declare (salience 2))
    ?lector <- (object (is-a Lector) (theme ""))
    =>
    (bind ?options Sports Music Adventures Culture Magic Daily_life)
    (bind ?theme (basicQ "
De quina tematica t'agradaria que fos el llibre? 
    Si t'agradaria que el teu llibre fos relacionat amb els esports tria l'opcio 'Sports'
    Si t'agradaria que el teu llibre fos relacionat amb les cancons i la musica tria l'opcio 'Music'
    Si t'agradaria que el teu llibre expliques histories emocionants tria l'opcio 'Adventures'
    Si t'agradaria que el teu llibre fos relacionat amb com es el mon tria l'opcio 'Culture'
    Si t'agradaria que el teu llibre fos relacionat amb la magia tria l'opcio 'Magic'
    Si t'agradaria que el teu llibre expliques fets del dia a dia tria l'opcio 'Daily_life'

>>> " ?options))
    (send ?lector put-theme ?theme)
    (printout t "Tematica assignada correctament." crlf)
    (printout t "Tematica preferida: " (send ?lector get-theme) crlf)
)

(defrule BABY::goal 
    (declare (salience 1))
    ?lector <- (object (is-a Lector) (goal "")) 
    =>
    (bind ?options Learning Entretainment)
    (bind ?goal (basicQ "
Quina es la finalitat d'aquest llibre? 
    Si vols el llibre per aprendre sobre qualsevol tematica tria l'opcio 'Learning'
    Si vols el llibre per passar una bona estona tria l'opcio 'Entretainment'

>>> " ?options))
    (send ?lector put-goal ?goal)
    (printout t "Finalitat assignada correctament." crlf)
    (printout t "Finalitat introduida: " (send ?lector get-goal) crlf)
)



;;*******************
;;* MODUL   CHILD   *
;;*******************
(defmodule CHILD 
    (import MAIN ?ALL)
    (import INPUT deffunction basicQ)
)

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
    Si t'agrada el mon dels esports i la competicio, selecciona 'Sport'.

>>> " ?options))
    (send ?lector put-theme ?theme)
    (printout t "Tema assignat correctament." crlf)
    (printout t "Tema preferit: " ?theme crlf)
)

(defrule CHILD::llibre_illustrat
    ?lector <- (object (is-a Lector) (illustrated nil))
    =>
    (bind ?illustrated (yes-or-no-p "
Busques un llibre amb illustracions?
    Respon 'Yes' si desitges un llibre amb illustracions, o 'No' si prefereixes un llibre sense illustracions.
>>> "))
    (send ?lector put-illustrated ?illustrated)
    (printout t "La teva resposta ha estat rebuda correctament:" crlf)
    (printout t "   Llibre amb il.lustracions: " ?illustrated crlf crlf)
)

;; ¿Has leido libros de alguna coleccion o saga? -- saga


;;*******************
;;*  MODUL  TEEN    *
;;*******************

(defmodule TEEN 
    (import MAIN ?ALL)
    (import INPUT deffunction basicQ)
)

(defrule TEEN::genere_teen
    (declare (salience 1))
    ?lector <- (object (is-a Lector) (main_genre [nil]))
    => 
    (bind ?options Fantasy Adventure Romance Mystery Dystopia Social)
    (bind ?genre (basicQ "
Quin genere de llibre estas buscant? 
    Si t'agradaria que el teu llibre fos d'aventures 'Adventure'
    Si t'agradaria que el teu llibre fos  de magia i fantasia tria l'opcio 'Fantasy'
    Si t'agradaria que el teu llibre fos sobre una historia d'amor tria l'opcio 'Romance'
    Si t'agradaria que el teu llibre fos sobre un misteri a resoldre tria l'opcio 'Mystery'
    Si t'agradaria que el teu llibre fos sobre un mon que ha canviat a una situacio nova i distopica tria l'opcio 'Dystopy'
    Si t'agradaria que el teu llibre expliques fets del dia a dia amb temes socials tria l'opcio 'Social'

>>> " ?options))
    (bind ?genrei (find-instance
                            ((?g Genero))
                            (eq (send ?g get-name_genre) ?genre) 
                          )) 
    (send ?lector put-main_genre ?genrei)
    (printout t "Genere assignat correctament." crlf)
    (printout t "   " (send ?lector get-main_genre) crlf crlf)
)


(defrule TEEN::tipus_de_coberta
    (declare (salience 1))
    ?lector <- (object (is-a Lector) (cover ""))
    => 
    (bind ?options hardcover paperback pocket)
    (bind ?cover (basicQ "
Quin tipus de coberta prefereixes? 
    Si prefereixes llibres amb tapa dura, selecciona 'hardcover'.
    Si prefereixes llibres amb tapa blanda, selecciona 'paperback'.
    Si prefereixes l'edicio de butxaca, selecciona 'pocket'.

>>> " ?options))
    (send ?lector put-cover ?cover)
    (printout t "Tipus de coberta assignat correctament." crlf)
    (printout t "Tipus de coberta: " (send ?lector get-cover) crlf)
)


(defrule TEEN::llibre_trendy
    (declare (salience 1))
    ?lector <- (object (is-a Lector) (trending_book nil))
    =>
    (bind ?trending_book (yes-or-no-p "
T'agraden els llibres que actualment son tendencia o estan de moda?
    Respon 'Yes' o 'No'.

>>> "))
    (send ?lector put-trending_book ?trending_book)
    (printout t "S'ha rebut correctament la teva resposta:" crlf)
    (printout t "   " (send ?lector get-trending_book) crlf crlf)
    (focus SOLUTION)
)

;;  ¿Que obra te ha gustado antes? -- ?? book (relacio) ?? 


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;*******************
;;* MoDUL   ADULT   *
;;*******************

(defmodule ADULT 
    (import MAIN ?ALL)
    (import INPUT deffunction basicQ)
)


(defrule ADULT::temps_de_lectura
    (declare (salience 1))
    ?lector <- (object (is-a Lector) (time_read ""))
    => 
    (bind ?options short medium long very_long)
    (bind ?time_read (basicQ "
Quin temps tens per llegir? 
    Si disposes de poc temps i desitges llibres curts, selecciona 'short'.
    Si tens un temps moderat per llegir i busques llibres de longitud mitjana, selecciona 'medium'.
    Si tens prou de temps i vols llibres llargs, selecciona 'long'.
    Si tens molt de temps i busques llibres molt llargs, selecciona 'very_long'.

>>> " ?options))
    (send ?lector put-time_read ?time_read)
    (printout t "Temps de lectura assignat correctament." crlf)
    (printout t "Temps de lectura: " (send ?lector get-time_read) crlf)
)


(defrule ADULT::askFamous
    ?lector <- (object (is-a Lector) (famous nil))
    =>
    (bind ?famous (yes-or-no-p "
Busques un llibre de algun autor considerat famos
    Respon 'Yes' o 'No'.

>>> "))
    (send ?lector put-famous ?famous)
    (printout t "S'ha rebut correctament la teva resposta:" crlf)
    (printout t "   " (send ?lector get-famous) crlf crlf)
)




(defrule ADULT::interes_bestseller
    ?lector <- (object (is-a Lector) (bestseller nil))
    =>
    (bind ?bestseller (yes-or-no-p "
T'interessa llegir best sellers?
    Respon 'Yes' si t'interessen, 'No' si no t'interessen.

>>> "))
    (send ?lector put-bestseller ?bestseller)
    (printout t "S'ha rebut correctament la teva resposta:" crlf)
    (printout t "   " (send ?lector get-bestseller) crlf crlf)
)



(defrule ADULT::tipus_de_coberta
    (declare (salience 1))
    ?lector <- (object (is-a Lector) (cover ""))
    => 
    (bind ?options hardcover paperback pocket)
    (bind ?cover (basicQ "
Quin tipus de coberta prefereixes? 
    Si prefereixes llibres amb tapa dura, selecciona 'hardcover'.
    Si prefereixes llibres amb tapa blanda, selecciona 'paperback'.
    Si prefereixes l'edicio de butxaca, selecciona 'pocket'.
    

>>> " ?options))
    (send ?lector put-cover ?cover)
    (printout t "Tipus de coberta assignat correctament." crlf)
    (printout t "Tipus de coberta: " (send ?lector get-cover) crlf)
)


(defrule ADULT::preferencia_novela
    (declare (salience 1))
    ?lector <- (object (is-a Lector) (actual nil))
    =>
    (bind ?actual (yes-or-no-p "
T'agraden les novelles actuals? O prefereixes les classiques?
    Respon 'Yes' si prefereixes les actuals, 'No' si prefereixes les classiques.

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
    (bind ?main_genre (basicQ "
Quin genere de llibre estas buscant? 
    Si t'agradaria llegir una obra contemporania, selecciona 'Contemporary'.
    Si t'interessen les noveles ambientades en fets historics, selecciona 'Historical'.
    Si vols resoldre un misteri mentre llegeixes, selecciona 'Mystery'.
    Si t'agrada la magia i les terres fantastiques, selecciona 'Fantasy'.
    Si busques una historia d'amor, selecciona 'Romance'.
    Si t'agrada explorar futurs i tecnologies imaginaries, selecciona 'Science_Fiction'.
    Si t'agrada passar por mentre llegeixes, selecciona 'Horror'.

>>> " ?options))
    (bind ?genrei (find-instance
                            ((?g Genero))
                            (eq (send ?g get-name_genre) ?main_genre) 
                          )) 
    (send ?lector put-main_genre ?genrei)
    (printout t "Genere assignat correctament." crlf)
    (printout t "   " (send ?lector get-main_genre) crlf crlf)

)


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
    ?lector <- (object (is-a Lector) (public ?p))
    =>
    (countInstances Libro)
    (do-for-all-instances 
        ((?l Libro))
        (neq ?l:public ?p)
        (send ?l delete))
    (countInstances Libro)
)

