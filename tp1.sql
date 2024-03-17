CREATE DATABASE TP1
USE TP1

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

CREATE TABLE if7 NOT EXISTS suivre (
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


