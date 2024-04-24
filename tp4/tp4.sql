--------------------------------- 1 
----selctionner la colone de la table en ordre ascii 
SELECT DISTINCT nom AS ‘NomPersonne’ FROM personne ORDER BY nom ASC
--------------------------------- 2
---- selectionner  toute les lignes de la table film ou la colonne annee =2002
SELECT * FROM film WHERE annee = 2002
----------------------------------- 3 
SELECT DISTINCT nom AS 'nomCinemaAokas' FROM cinema WHERE adresse = 'Aokas'

--------------------------------- 4 
---on selectionne l'id des acteur ainsi que tout les noms des personnes present dans notre DB 
--- et on compare entre l'id des personnes et des acteurs a la fin on laisse que les similaires   
--- on utilise DISTINCT pour sup la redondance
SELECT DISTINCT JOUER.idActeur , personne.nom
FROM JOUER, personne
WHERE jouer.idActeur = personne.idPersonne  ;

--------------------------------- 5 
----meme principe que 4 
SELECT DISTINCT film.idRealisateur , personne.nom
FROM film, personne
WHERE film.idRealisateur = personne.idPersonne  ;
--------------------------------- 6 
------'%s%' veut dire il y a au moins un seul s (ou plus)
SELECT DISTINCT prenom AS 'prenomPersonneAvecS' FROM personne WHERE prenom like '%s%'
--------------------------------- 7 
-----faut trouver l'id du realisateur donc on fait une correspondance
SELECT  film.titre AS 'realiserParVonTrier'
FROM film , personne
WHERE personne.nom = 'Von Trier' AND personne.idPersonne = film.idRealisateur

--------------------------------- 8 
---technique 1
SELECT nom , prenom
FROM personne
WHERE idPersonne NOT IN (SELECT idActeur FROM JOUER);
---technique 2
SELECT DISTINCT personne.nom , personne.prenom
FROM personne, jouer
WHERE idPersonne NOT IN (jouer.idActeur);

--------------------------------- 9
SELECT personne.nom , personne.prenom
FROM personne, jouer , film 
WHERE personne.idPersonne = jouer.idActeur 
    AND personne.idPersonne = film.idRealisateur

--------------------------------- 10 
SELECT DISTINCT personne.nom , personne.prenom 
FROM personne, jouer, cinema, projection 
WHERE personne.idPersonne= jouer.idActeur 
    AND jouer.idFilm = projection.idFilm 
    AND projection.idCinema = cinema.idCinema 
    AND cinema.nom = 'Le Fontenelle' 
    AND projection.date >= 2000

--------------------------------- 11
SELECT film.titre
FROM film, jouer, personne, cinema, projection
WHERE personne.nom = 'Kidman' 
    AND personne.prenom ='Nicole' 
    AND personne.idPersonne = jouer.idActeur 
    AND jouer.idFilm = film.idFilm 
    AND film.idFilm = projection.idFilm 
    AND projection.idCinema = cinema.idCinema 
    AND cinema.nom = 'le Fontenelle'

--------------------------------- 12
SELECT  COUNT(DISTINCT Projection.idFilm) AS nombre_films_projetes_Aokas
FROM projection , cinema , film
WHERE film.idFilm = projection.idFilm 
    AND projection.idCinema = cinema.idCinema
    AND cinema.adresse ='Aokas'

--------------------------------- 13
SELECT  COUNT(*) AS nombre_projection 
FROM projection, film
WHERE film.idFilm = projection.idFilm
     AND film.titre = '« Les oiseaux se cachent pour mourir'