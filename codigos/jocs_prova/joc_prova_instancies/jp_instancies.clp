(definstances instances
    ([lector] of Lector
        (public "baby")
        (goal "Learning")
        (hab_lectura "Neutral")
        (illustrated TRUE)
        (theme "Sports")
    )) 
 
 
(definstances instances
    ([lector] of Lector
        (public "children")
        (hab_lectura "Neutral")
        (illustrated TRUE)
        (theme "Music")
        (time_read "very_long")
    )) 
 
 
(definstances instances
    ([lector] of Lector
        (public "children")
        (hab_lectura "Neutral")
        (illustrated TRUE)
        (theme "Daily_life")
        (time_read "short")
    )) 
 
 
(definstances instances
    ([lector] of Lector
        (public "teenager")
        (main_genre [Dystopia])
        (bestseller TRUE)
        (cover "soft")
        (hab_lectura "Neutral")
        (time_read "short")
        )) 
 
 
(definstances instances
    ([lector] of Lector
        (public "teenager")
        (main_genre [Adventure])
        (bestseller FALSE)
        (cover "soft")
        (hab_lectura "Neutral")
        (time_read "short")
        )) 
 
 
(definstances instances
    ([lector] of Lector
        (public "adult")
        (main_genre [Fantasy])
        (has_subgenre [Urban_Fantasy])
        (actual FALSE)
        (famous FALSE)
        (bestseller FALSE)
        (cover "soft")
        (hab_lectura "Neutral")
        (time_read "medium")
        )) 
 
 
(definstances instances
    ([lector] of Lector
        (public "adult")
        (main_genre [Contemporary])
        (has_subgenre [Real_Dystopia])
        (actual FALSE)
        (famous TRUE)
        (bestseller TRUE)
        (cover "hard")
        (hab_lectura "Neutral")
        (time_read "short")
        )) 
 
 
(definstances instances
    ([lector] of Lector
        (public "adult")
        (main_genre [Mystery])
        (has_subgenre [Police])
        (actual TRUE)
        (famous TRUE)
        (bestseller TRUE)
        (cover "pocket")
        (hab_lectura "Neutral")
        (time_read "medium")
        )) 
 
 
