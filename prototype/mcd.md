RÉDACTEUR
----------------
id pk
nom
prénom
email

ARTICLE
----------------
id pk
titre
contenu
image
date_publication

CATÉGORIE
----------------
id pk
nom

Association et cardinalite : 
Auteur(1,N)----écrire----(1,1)Article
Article(1,1)-----appartient-----(0,N)Catégorie