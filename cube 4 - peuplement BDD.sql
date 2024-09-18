-- Table: utilisateur
INSERT INTO utilisateur (reference_utilisateur, nom_utilisateur, prenom_utilisateur, date_naissance_utilisateur, email_utilisateur, tel_utilisateur) VALUES
('U12345', 'Dupont', 'Jean', '1980-05-15', 'jean.dupont@example.com', '0601234567'),
('U12346', 'Martin', 'Alice', '1992-11-22', 'alice.martin@example.com', '0602345678'),
('U12347', 'Durand', 'Paul', '1985-09-10', 'paul.durand@example.com', '0603456789'),
('U12348', 'Leroy', 'Clara', '1990-03-03', 'clara.leroy@example.com', '0604567890'),
('U12349', 'Bernard', 'Luc', '1978-12-30', 'luc.bernard@example.com', '0605678901');

-- Table: fournisseur
INSERT INTO fournisseur (reference_fournisseur, nom_fournisseur, adresse_fournisseur, tel_fournisseur, email_fournisseur) VALUES
('F1001', 'Fournisseur A', '10 Rue A, Paris', '0612345678', 'contact@fournisseura.com'),
('F1002', 'Fournisseur B', '15 Rue B, Lyon', '0623456789', 'contact@fournisseurb.com'),
('F1003', 'Fournisseur C', '20 Rue C, Marseille', '0634567890', 'contact@fournisseurc.com'),
('F1004', 'Fournisseur D', '25 Rue D, Lille', '0645678901', 'contact@fournisseurd.com'),
('F1005', 'Fournisseur E', '30 Rue E, Bordeaux', '0656789012', 'contact@fournisseure.com');

-- Table: famille_alcool
INSERT INTO famille_alcool (reference_famille, nom_famille, type_famille) VALUES
('FA01', 'Whisky', 'Spiritueux'),
('FA02', 'Vodka', 'Spiritueux'),
('FA03', 'Cognac', 'Spiritueux'),
('FA04', 'Vin Rouge', 'Vin'),
('FA05', 'Vin Blanc', 'Vin');

-- Table: stock
INSERT INTO stock (reference_stock, quantite_stock) VALUES
('S001', 100),
('S002', 200),
('S003', 300),
('S004', 150),
('S005', 250);

-- Table: annee_production
INSERT INTO annee_production (annee_produit) VALUES
('2015'),
('2016'),
('2017'),
('2018'),
('2019');

-- Table: mouvement_stock
INSERT INTO mouvement_stock (reference_mouvement, quantite_mouvement, type_mouvement, date_heure_mouvement, Id_stock) VALUES
('M001', 50, 'Entrée', '2023-09-16 14:00:00', 1),
('M002', 30, 'Sortie', '2023-09-17 10:00:00', 2),
('M003', 40, 'Entrée', '2023-09-18 09:00:00', 3),
('M004', 20, 'Sortie', '2023-09-18 12:00:00', 4),
('M005', 60, 'Entrée', '2023-09-19 16:00:00', 5);

-- Table: panier
INSERT INTO panier (date_estim_livraison, prix_panier, Id_utilisateur) VALUES
('2023-09-20', 100.50, 1),
('2023-09-21', 150.75, 2),
('2023-09-22', 200.00, 3),
('2023-09-23', 250.30, 4),
('2023-09-24', 300.90, 5);

-- Table: adresse
INSERT INTO adresse (adresse_facturation, adresse_livraison) VALUES
('10 Rue A, Paris', '11 Rue B, Paris'),
('15 Rue C, Lyon', '16 Rue D, Lyon'),
('20 Rue E, Marseille', '21 Rue F, Marseille'),
('25 Rue G, Lille', '26 Rue H, Lille'),
('30 Rue I, Bordeaux', '31 Rue J, Bordeaux');

-- Table: pays
INSERT INTO pays (code_pays, libelle_pays) VALUES
('FR', 'France'),
('DE', 'Allemagne'),
('ES', 'Espagne'),
('IT', 'Italie'),
('US', 'États-Unis');

-- Table: region
INSERT INTO region (code_region, libelle_region, Id_pays) VALUES
('IDF', 'Île-de-France', 1),
('ARA', 'Auvergne-Rhône-Alpes', 1),
('PACA', 'Provence-Alpes-Côte d\'Azur', 1),
('HDF', 'Hauts-de-France', 1),
('NA', 'Nouvelle-Aquitaine', 1);

-- Table: emplacement
INSERT INTO emplacement (Id_emplacement, emplacement, Id_stock) VALUES
('E001', 'A1', 1),
('E002', 'A2', 2),
('E003', 'A3', 3),
('E004', 'A4', 4),
('E005', 'A5', 5);

-- Table: produit
INSERT INTO produit (reference_produit, nom_produit, prix_produit, TVA_produit, image_produit, prix_achat, Id_region, Id_annee_production) VALUES
('P001', 'Whisky 12 ans', 50.00, 10.00, 'whisky12.jpg', 30.00, 1, 1),
('P002', 'Vodka Premium', 25.00, 5.00, 'vodka.jpg', 15.00, 2, 2),
('P003', 'Cognac XO', 100.00, 20.00, 'cognacxo.jpg', 70.00, 3, 3),
('P004', 'Vin Rouge Bordeaux', 15.00, 3.00, 'vinrouge.jpg', 10.00, 4, 4),
('P005', 'Vin Blanc Chardonnay', 20.00, 4.00, 'vinblanc.jpg', 12.00, 5, 5);

-- Table: commande
INSERT INTO commande (reference_commande, date_heure_commande, quantite_commande, nom_prenom_commande, reference_facture, prix_commande, Id_adresse) VALUES
(1001, '2023-09-16 14:30:00', 5, 'Jean Dupont', 'F001', 250.50, 1),
(1002, '2023-09-17 10:00:00', 3, 'Alice Martin', 'F002', 150.00, 2),
(1003, '2023-09-18 09:00:00', 7, 'Paul Durand', 'F003', 350.75, 3),
(1004, '2023-09-19 12:00:00', 2, 'Clara Leroy', 'F004', 100.90, 4),
(1005, '2023-09-20 16:00:00', 4, 'Luc Bernard', 'F005', 200.00, 5);

-- Table: entrepot
INSERT INTO entrepot (reference_entrepot, adresse_entrepot, Id_region) VALUES
('E1001', '1 Avenue A, Paris', 1),
('E1002', '5 Avenue B, Lyon', 2),
('E1003', '10 Avenue C, Marseille', 3),
('E1004', '15 Avenue D, Lille', 4),
('E1005', '20 Avenue E, Bordeaux', 5);

-- Table: produit_choisi
INSERT INTO produit_choisi (Id_panier, Id_produit) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

-- Table: produit_stock
INSERT INTO produit_stock (Id_produit, Id_stock) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

-- Table: produit_famille
INSERT INTO produit_famille (Id_produit, Id_famille) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

-- Table: produit_fournisseur
INSERT INTO produit_fournisseur (Id_produit, Id_fournisseur) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

-- Table: stock_entree
INSERT INTO stock_entree (Id_fournisseur, Id_mouvement_stock) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

-- Table: produit_commande
INSERT INTO produit_commande (Id_produit, Id_commande) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

-- Table: produit_mouvement
INSERT INTO produit_mouvement (Id_produit, Id_mouvement_stock) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

-- Table: entrepot_emplacement
INSERT INTO entrepot_emplacement (Id_entrepot, Id_emplacement) VALUES
(1, 'E001'),
(2, 'E002'),
(3, 'E003'),
(4, 'E004'),
(5, 'E005');

-- Table: mouvement_emplacement
INSERT INTO mouvement_emplacement (Id_mouvement_stock, Id_emplacement) VALUES
(1, 'E001'),
(2, 'E002'),
(3, 'E003'),
(4, 'E004'),
(5, 'E005');

-- Table: utilisateur_adresse
INSERT INTO utilisateur_adresse (Id_utilisateur, Id_adresse) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);
