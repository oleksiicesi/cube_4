CREATE TABLE utilisateur(
   Id_utilisateur INT AUTO_INCREMENT,
   reference_utilisateur VARCHAR(50),
   nom_utilisateur VARCHAR(50),
   prenom_utilisateur VARCHAR(50),
   date_naissance_utilisateur DATE,
   email_utilisateur VARCHAR(50),
   tel_utilisateur INT,
   PRIMARY KEY(Id_utilisateur)
);

CREATE TABLE fournisseur(
   Id_fournisseur INT AUTO_INCREMENT,
   reference_fournisseur VARCHAR(50),
   nom_fournisseur VARCHAR(50),
   adresse_fournisseur VARCHAR(50),
   tel_fournisseur VARCHAR(50),
   email_fournisseur VARCHAR(50),
   PRIMARY KEY(Id_fournisseur)
);

CREATE TABLE famille_alcool(
   Id_famille INT AUTO_INCREMENT,
   reference_famille VARCHAR(50),
   nom_famille VARCHAR(50),
   type_famille VARCHAR(50),
   PRIMARY KEY(Id_famille)
);

CREATE TABLE stock(
   Id_stock INT AUTO_INCREMENT,
   reference_stock VARCHAR(50),
   quantite_stock INT,
   PRIMARY KEY(Id_stock)
);

CREATE TABLE annee_production(
   Id_annee_production INT AUTO_INCREMENT,
   annee_produit VARCHAR(50),
   PRIMARY KEY(Id_annee_production)
);

CREATE TABLE mouvement_stock(
   Id_mouvement_stock INT AUTO_INCREMENT,
   reference_mouvement VARCHAR(50),
   quantite_mouvement INT,
   type_mouvement VARCHAR(50),
   date_heure_mouvement DATETIME,
   Id_stock INT NOT NULL,
   PRIMARY KEY(Id_mouvement_stock),
   FOREIGN KEY(Id_stock) REFERENCES stock(Id_stock)
);

CREATE TABLE panier(
   Id_panier INT AUTO_INCREMENT,
   date_estim_livraison VARCHAR(50),
   prix_panier DECIMAL(15,2),
   Id_utilisateur INT NOT NULL,
   PRIMARY KEY(Id_panier),
   UNIQUE(Id_utilisateur),
   FOREIGN KEY(Id_utilisateur) REFERENCES utilisateur(Id_utilisateur)
);

CREATE TABLE adresse(
   Id_adresse INT AUTO_INCREMENT,
   adresse_facturation VARCHAR(50),
   adresse_livraison VARCHAR(50),
   PRIMARY KEY(Id_adresse)
);

CREATE TABLE pays(
   Id_pays INT AUTO_INCREMENT,
   code_pays VARCHAR(50),
   libelle_pays VARCHAR(50),
   PRIMARY KEY(Id_pays)
);

CREATE TABLE region(
   Id_region INT AUTO_INCREMENT,
   code_region VARCHAR(50),
   libelle_region VARCHAR(50),
   Id_pays INT NOT NULL,
   PRIMARY KEY(Id_region),
   FOREIGN KEY(Id_pays) REFERENCES pays(Id_pays)
);

CREATE TABLE emplacement(
   Id_emplacement VARCHAR(50),
   emplacement VARCHAR(50),
   Id_stock INT,
   PRIMARY KEY(Id_emplacement),
   FOREIGN KEY(Id_stock) REFERENCES stock(Id_stock)
);

CREATE TABLE produit(
   Id_produit INT AUTO_INCREMENT,
   reference_produit VARCHAR(50),
   nom_produit VARCHAR(50),
   prix_produit DECIMAL(15,2),
   TVA_produit DECIMAL(15,2),
   image_produit VARCHAR(50),
   prix_achat DECIMAL(15,2),
   Id_region INT NOT NULL,
   Id_annee_production INT NOT NULL,
   PRIMARY KEY(Id_produit),
   FOREIGN KEY(Id_region) REFERENCES region(Id_region),
   FOREIGN KEY(Id_annee_production) REFERENCES annee_production(Id_annee_production)
);

CREATE TABLE commande(
   Id_commande INT AUTO_INCREMENT,
   reference_commande INT,
   date_heure_commande DATETIME,
   quantite_commande INT,
   nom_prenom_commande VARCHAR(50),
   reference_facture VARCHAR(50),
   prix_commande DECIMAL(15,2),
   Id_adresse INT NOT NULL,
   PRIMARY KEY(Id_commande),
   FOREIGN KEY(Id_adresse) REFERENCES adresse(Id_adresse)
);

CREATE TABLE entrepot(
   Id_entrepot INT AUTO_INCREMENT,
   reference_entrepot VARCHAR(50),
   adresse_entrepot VARCHAR(50),
   Id_region INT NOT NULL,
   PRIMARY KEY(Id_entrepot),
   FOREIGN KEY(Id_region) REFERENCES region(Id_region)
);

CREATE TABLE produit_choisi(
   Id_produit_choisi INT AUTO_INCREMENT,
   Id_panier INT NOT NULL,
   Id_produit INT NOT NULL,
   PRIMARY KEY(Id_produit_choisi),
   FOREIGN KEY(Id_panier) REFERENCES panier(Id_panier),
   FOREIGN KEY(Id_produit) REFERENCES produit(Id_produit)
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

CREATE TABLE stock_entree(
   Id_fournisseur INT,
   Id_mouvement_stock INT,
   PRIMARY KEY(Id_fournisseur, Id_mouvement_stock),
   FOREIGN KEY(Id_fournisseur) REFERENCES fournisseur(Id_fournisseur),
   FOREIGN KEY(Id_mouvement_stock) REFERENCES mouvement_stock(Id_mouvement_stock)
);

CREATE TABLE produit_commande(
   Id_produit INT,
   Id_commande INT,
   PRIMARY KEY(Id_produit, Id_commande),
   FOREIGN KEY(Id_produit) REFERENCES produit(Id_produit),
   FOREIGN KEY(Id_commande) REFERENCES commande(Id_commande)
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