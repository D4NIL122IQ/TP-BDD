CREATE DATABASE TP3
USE TP3

--------------------------------------------------------------- creation des tables 
CREATE TABLE IF NOT EXISTS personne (
    idPersonne VARCHAR(5),
    NumSec INT ,
    NomP VARCHAR(30),
    PreP VARCHAR(30),
    dateNaiP DATE ,
    adresseP VARCHAR(60),
    PRIMARY KEY (idPersonne) 
)

CREATE TABLE IF NOT EXISTS module (
    codeModule VARCHAR(5),
    intituleM VARCHAR(25),
    coefM INT ,
    PRIMARY KEY (codeModule)
)

CREATE TABLE if NOT EXISTS suivre (
    idPer VARCHAR(5),
    idMod VARCHAR(5),
    note int check (note<=20 && note>=0)
    PRIMARY KEY (idPer , idMod),
    FOREIGN KEY (idPer) REFERENCES personne (idPersonne),
    FOREIGN key (idMod ) REFERENCES module (codeModule)
)

-------------------------------------------------- 3
ALTER TABLE MODULE ADD idEnseignant VARCHAR (5) 

--------------------------------------------------4
ALTER TABLE modules ADD CONSTRAINT FOREIGN KEY (idEnseignant) REFERENCES personnes (idPersonne)  ON UPDATE CASCADE  ON DELETE SET NULL

--------------------------------------------------5
ALTER TABLE personne ADD CONSTRAINT UNIQUE (NumSec)

--------------------------------------------------6
ALTER TABLE personne MODIFY adresseP VARCHAR(50) DEFAULT 'algerie'

-----------------------------------------------------7
ALTER TABLE module ADD CONSTRAINT ck_pc CHECK (coefM >=0)

-----------------------------------------------------8
INSERT INTO personnes 
VALUES ("1MI",11992,"KABLI","Cilia","1992/01/20","Bejaia"),
       ("2MI",21992,"ADI","Mounir","1991/03/25","Bouira"),
       ("3MI",31993,"HAMOUDI",NULL,"1993/08/14","Bejaia"),--! idPersonne '2MI' est deja existant donc faut le modifier car la clé primaire est unique
       (NULL,51989,"KASRI","Amine","1989/05/01","Bejaia"),
       (10,31980,"KARA","Lyes","1980/05/18","Alger"),
       (11,41981,"SALMI","Riad","1981/01/09"," "),
       (13,41985,NULL,"Ryma","1985/02/26","Bejaia");

--------------------------------------------------------9
INSERT INTO modules 
VALUES  ("BDL2","Bases de donnees",3,"10"),
        ("SEL3","Systeme d`exploitation",2,"11"),
        ("SEL2","Systeme d`information",4,"11"),
        ("1MI","BDL2",NULL,"15"),
        (NULL,"SEL3",NULL,"11");

-----------------------------------------------------10
INSERT INTO suivre 
VALUES  ("1MI","SEL3",17),
        ("2MI","SEL2",12),
        ("2MI","LML2",13),
        ("3MI","SEL3",11);

---------------------------------------------------------11
UPDATE personne set NumSec = 31980 WHERE idPersonne = '11' ---confili NumSec est unique 

------------------------------------------------------------12
UPDATE module set codeModule ='BDDL2' WHERE codeModule = 'BDL2'

------------------------------------------------------------13
DELETE FROM module WHERE codeModule ='SEL3'

------------------------------------------------------------14
UPDATE personne set idPersonne = '11MI' WHERE idPersonne = '1MI'

------------------------------------------------------------15
DELETE FROM personne WHERE idPersonne = '2MI'

------------------------------------------------------------16
UPDATE personne set idPersonne ='21' WHERE idPersonne ='11'

--------------------------------------------------------------17
DELETE FROM personne WHERE idPersonne ='10'