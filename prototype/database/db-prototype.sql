CREATE DATABASE blog;
USE blog;
CREATE TABLE redacteur (
    id_redacteur INT AUTO_INCREMENT PRIMARY KEY,
    nom_redacteur VARCHAR(100) NOT NULL,
    email_redacteur VARCHAR(150) NOT NULL UNIQUE
);
CREATE TABLE categorie (
    id_categorie INT AUTO_INCREMENT PRIMARY KEY,
    nom_categorie VARCHAR(300) NOT NULL UNIQUE
);
CREATE TABLE articles (
    id_article INT AUTO_INCREMENT PRIMARY KEY,
    titre VARCHAR(150) NOT NULL,
    contenu TEXT NOT NULL,
    image VARCHAR(300) NOT NULL,
    date_publication DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    id_redacteur INT NOT NULL,
    id_categorie INT NOT NULL,
    FOREIGN KEY (id_redacteur) REFERENCES redacteur(id_redacteur),
    FOREIGN KEY (id_categorie) REFERENCES categorie(id_categorie)
);