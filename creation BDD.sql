-- Création des tables

CREATE TABLE utilisateur(
   Id_utilisateur INT PRIMARY KEY AUTO_INCREMENT,
   reference_utilisateur VARCHAR(50) NOT NULL,
   nom_utilisateur VARCHAR(50) NOT NULL,
   prenom_utilisateur VARCHAR(50) NOT NULL,
   date_naissance_utilisateur DATE NOT NULL,
   tel_utilisateur VARCHAR(50) NOT NULL,
   email_utilisateur VARCHAR(50) NOT NULL,
   mot_de_passe_utilisateur VARCHAR(50) NOT NULL
);

CREATE TABLE fournisseur(
   Id_fournisseur INT PRIMARY KEY AUTO_INCREMENT,
   reference_fournisseur VARCHAR(50) NOT NULL,
   nom_fournisseur VARCHAR(50) NOT NULL,
   adresse_fournisseur VARCHAR(50),
   tel_fournisseur VARCHAR(50),
   email_fournisseur VARCHAR(50)
);

CREATE TABLE famille_alcool(
   Id_famille INT PRIMARY KEY AUTO_INCREMENT,
   reference_famille VARCHAR(50) NOT NULL,
   nom_famille VARCHAR(50) NOT NULL,
   type_famille VARCHAR(50) NOT NULL
);

CREATE TABLE stock(
   Id_stock INT PRIMARY KEY AUTO_INCREMENT,
   reference_stock VARCHAR(50) NOT NULL,
   quantite_stock INT NOT NULL
);

CREATE TABLE annee_production(
   Id_annee_production INT PRIMARY KEY AUTO_INCREMENT,
   annee_produit VARCHAR(50) NOT NULL
);

CREATE TABLE panier(
   Id_panier INT PRIMARY KEY AUTO_INCREMENT,
   date_estim_livraison VARCHAR(50) NOT NULL,
   prix_panier DECIMAL(15,2) NOT NULL,
   Id_utilisateur INT NOT NULL,
   FOREIGN KEY(Id_utilisateur) REFERENCES utilisateur(Id_utilisateur)
);

CREATE TABLE adresse(
   Id_adresse INT PRIMARY KEY AUTO_INCREMENT,
   adresse_facturation VARCHAR(50) NOT NULL,
   adresse_livraison VARCHAR(50) NOT NULL
);

CREATE TABLE pays(
   Id_pays INT PRIMARY KEY AUTO_INCREMENT,
   code_pays VARCHAR(50) NOT NULL,
   libelle_pays VARCHAR(50) NOT NULL
);

CREATE TABLE region(
   Id_region INT PRIMARY KEY AUTO_INCREMENT,
   code_region VARCHAR(50) NOT NULL,
   libelle_region VARCHAR(50) NOT NULL,
   Id_pays INT NOT NULL,
   FOREIGN KEY(Id_pays) REFERENCES pays(Id_pays)
);

CREATE TABLE emplacement(
   Id_emplacement VARCHAR(50) PRIMARY KEY,
   emplacement VARCHAR(50) NOT NULL,
   Id_stock INT,
   FOREIGN KEY(Id_stock) REFERENCES stock(Id_stock)
);

CREATE TABLE employe(
   Id_employe INT PRIMARY KEY AUTO_INCREMENT,
   reference_employe VARCHAR(50) NOT NULL,
   nom_employe VARCHAR(50),
   prenom_employe VARCHAR(50),
   date_de_naissance_employe DATE,
   tel_employe VARCHAR(50),
   email_employe VARCHAR(50) NOT NULL,
   mot_de_passe_employe VARCHAR(50) NOT NULL
);

CREATE TABLE produit(
   Id_produit INT PRIMARY KEY AUTO_INCREMENT,
   reference_produit VARCHAR(50) NOT NULL,
   nom_produit VARCHAR(50) NOT NULL,
   prix_produit DECIMAL(15,2) NOT NULL,
   TVA_produit DECIMAL(15,2) NOT NULL,
   image_produit VARCHAR(50),
   prix_achat DECIMAL(15,2) NOT NULL,
   Id_region INT NOT NULL,
   Id_annee_production INT NOT NULL,
   FOREIGN KEY(Id_region) REFERENCES region(Id_region),
   FOREIGN KEY(Id_annee_production) REFERENCES annee_production(Id_annee_production)
);

CREATE TABLE commande(
   Id_commande INT PRIMARY KEY AUTO_INCREMENT,
   reference_commande VARCHAR(50) NOT NULL,
   date_heure_commande DATETIME NOT NULL,
   nom_prenom_commande VARCHAR(50) NOT NULL,
   reference_facture VARCHAR(50) NOT NULL,
   prix_commande DECIMAL(15,2) NOT NULL,
   Id_adresse INT NOT NULL,
   FOREIGN KEY(Id_adresse) REFERENCES adresse(Id_adresse)
);

CREATE TABLE entrepot(
   Id_entrepot INT PRIMARY KEY AUTO_INCREMENT,
   reference_entrepot VARCHAR(50) NOT NULL,
   adresse_entrepot VARCHAR(50) NOT NULL,
   Id_region INT NOT NULL,
   FOREIGN KEY(Id_region) REFERENCES region(Id_region)
);

CREATE TABLE mouvement_stock(
   Id_mouvement_stock INT PRIMARY KEY AUTO_INCREMENT,
   reference_mouvement VARCHAR(50) NOT NULL,
   quantite_mouvement INT NOT NULL,
   type_mouvement VARCHAR(50) NOT NULL,
   date_heure_mouvement DATETIME NOT NULL,
   Id_employe INT NOT NULL,
   Id_stock INT NOT NULL,
   FOREIGN KEY(Id_employe) REFERENCES employe(Id_employe),
   FOREIGN KEY(Id_stock) REFERENCES stock(Id_stock)
);

CREATE TABLE choisi_panier(
   Id_choisi_panier INT PRIMARY KEY AUTO_INCREMENT,
   Id_panier INT NOT NULL,
   Id_produit INT NOT NULL,
   FOREIGN KEY(Id_panier) REFERENCES panier(Id_panier),
   FOREIGN KEY(Id_produit) REFERENCES produit(Id_produit)
);

CREATE TABLE choisi_commande(
   Id_choisi_commande INT PRIMARY KEY AUTO_INCREMENT,
   Id_produit INT NOT NULL,
   Id_commande INT NOT NULL,
   FOREIGN KEY(Id_produit) REFERENCES produit(Id_produit),
   FOREIGN KEY(Id_commande) REFERENCES commande(Id_commande)
);

CREATE TABLE produit_stock(
   Id_produit INT,
   Id_stock INT,
   PRIMARY KEY(Id_produit, Id_stock),
   FOREIGN KEY(Id_produit) REFERENCES produit(Id_produit),
   FOREIGN KEY(Id_stock) REFERENCES stock(Id_stock)
);

CREATE TABLE produit_famille(
   Id_produit INT,
   Id_famille INT,
   PRIMARY KEY(Id_produit, Id_famille),
   FOREIGN KEY(Id_produit) REFERENCES produit(Id_produit),
   FOREIGN KEY(Id_famille) REFERENCES famille_alcool(Id_famille)
);

CREATE TABLE produit_fournisseur(
   Id_produit INT,
   Id_fournisseur INT,
   PRIMARY KEY(Id_produit, Id_fournisseur),
   FOREIGN KEY(Id_produit) REFERENCES produit(Id_produit),
   FOREIGN KEY(Id_fournisseur) REFERENCES fournisseur(Id_fournisseur)
);

CREATE TABLE fournisseur_stock(
   Id_fournisseur INT,
   Id_mouvement_stock INT,
   PRIMARY KEY(Id_fournisseur, Id_mouvement_stock),
   FOREIGN KEY(Id_fournisseur) REFERENCES fournisseur(Id_fournisseur),
   FOREIGN KEY(Id_mouvement_stock) REFERENCES mouvement_stock(Id_mouvement_stock)
);

CREATE TABLE produit_mouvement(
   Id_produit INT,
   Id_mouvement_stock INT,
   PRIMARY KEY(Id_produit, Id_mouvement_stock),
   FOREIGN KEY(Id_produit) REFERENCES produit(Id_produit),
   FOREIGN KEY(Id_mouvement_stock) REFERENCES mouvement_stock(Id_mouvement_stock)
);

CREATE TABLE entrepot_emplacement(
   Id_entrepot INT,
   Id_emplacement VARCHAR(50),
   PRIMARY KEY(Id_entrepot, Id_emplacement),
   FOREIGN KEY(Id_entrepot) REFERENCES entrepot(Id_entrepot),
   FOREIGN KEY(Id_emplacement) REFERENCES emplacement(Id_emplacement)
);

CREATE TABLE mouvement_emplacement(
   Id_mouvement_stock INT,
   Id_emplacement VARCHAR(50),
   PRIMARY KEY(Id_mouvement_stock, Id_emplacement),
   FOREIGN KEY(Id_mouvement_stock) REFERENCES mouvement_stock(Id_mouvement_stock),
   FOREIGN KEY(Id_emplacement) REFERENCES emplacement(Id_emplacement)
);

CREATE TABLE utilisateur_adresse(
   Id_utilisateur INT,
   Id_adresse INT,
   PRIMARY KEY(Id_utilisateur, Id_adresse),
   FOREIGN KEY(Id_utilisateur) REFERENCES utilisateur(Id_utilisateur),
   FOREIGN KEY(Id_adresse) REFERENCES adresse(Id_adresse)
);

CREATE TABLE employe_entrepot(
   Id_entrepot INT,
   Id_employe INT,
   PRIMARY KEY(Id_entrepot, Id_employe),
   FOREIGN KEY(Id_entrepot) REFERENCES entrepot(Id_entrepot),
   FOREIGN KEY(Id_employe) REFERENCES employe(Id_employe)
);
