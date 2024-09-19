-- Insérer des données dans la table pays
INSERT INTO pays (code_pays, libelle_pays) VALUES 
('FR', 'France'),
('DE', 'Allemagne');

-- Insérer des données dans la table region
INSERT INTO region (code_region, libelle_region, Id_pays) VALUES 
('IDF', 'Île-de-France', 1),
('PAC', 'Provence-Alpes-Côte d\'Azur', 1);

-- Insérer des données dans la table annee_production
INSERT INTO annee_production (annee_produit) VALUES 
('2020'),
('2021');

-- Insérer des données dans la table utilisateur
INSERT INTO utilisateur (reference_utilisateur, nom_utilisateur, prenom_utilisateur, date_naissance_utilisateur, tel_utilisateur, email_utilisateur, mot_de_passe_utilisateur) VALUES 
('USR001', 'Dupont', 'Jean', '1980-01-15', '0612345678', 'jean.dupont@example.com', 'password123'),
('USR002', 'Martin', 'Claire', '1990-05-20', '0623456789', 'claire.martin@example.com', 'password456');

-- Insérer des données dans la table fournisseur
INSERT INTO fournisseur (reference_fournisseur, nom_fournisseur, adresse_fournisseur, tel_fournisseur, email_fournisseur) VALUES 
('F001', 'Fournisseur A', '1 Rue de Paris', '0145678901', 'contact@fournisseura.com'),
('F002', 'Fournisseur B', '2 Avenue de Lyon', '0145678902', 'contact@fournisseurb.com');

-- Insérer des données dans la table famille_alcool
INSERT INTO famille_alcool (reference_famille, nom_famille, type_famille) VALUES 
('FAM001', 'Vins Rouges', 'Vin'),
('FAM002', 'Bières', 'Bière');

-- Insérer des données dans la table stock
INSERT INTO stock (reference_stock, quantite_stock) VALUES 
('STK001', 100),
('STK002', 50);

-- Insérer des données dans la table panier
INSERT INTO panier (date_estim_livraison, prix_panier, Id_utilisateur) VALUES 
('2023-09-15', 120.00, 1),
('2023-09-16', 75.50, 2);

-- Insérer des données dans la table adresse
INSERT INTO adresse (adresse_facturation, adresse_livraison) VALUES 
('10 Rue de la Liberté', '20 Avenue des Champs Élysées'),
('30 Boulevard de l\'Opéra', '40 Place de la République');

-- Insérer des données dans la table emplacement
INSERT INTO emplacement (Id_emplacement, emplacement, Id_stock) VALUES 
('EMPL001', 'Emplacement A', 1),
('EMPL002', 'Emplacement B', 2);

-- Insérer des données dans la table employe
INSERT INTO employe (reference_employe, nom_employe, prenom_employe, date_de_naissance_employe, tel_employe, email_employe, mot_de_passe_employe) VALUES 
('EMP001', 'Durand', 'Marc', '1985-02-10', '0612345679', 'root', 'root'),
('EMP002', 'Lefevre', 'Sophie', '1992-03-25', '0612345680', 'sophie.lefevre@example.com', 'password101');

-- Insérer des données dans la table produit
INSERT INTO produit (reference_produit, nom_produit, prix_produit, TVA_produit, image_produit, prix_achat, Id_region, Id_annee_production) VALUES 
('PROD001', 'Vin Rouge A', 15.00, 20.00, 'vin_rouge_a.jpg', 10.00, 1, 1),
('PROD002', 'Bière Blonde B', 5.00, 5.00, 'biere_b.html', 3.00, 1, 2);

-- Insérer des données dans la table commande
INSERT INTO commande (reference_commande, date_heure_commande, nom_prenom_commande, reference_facture, prix_commande, Id_adresse) VALUES 
('CMD001', '2023-09-10 10:30:00', 'Jean Dupont', 'FAC001', 120.00, 1),
('CMD002', '2023-09-11 11:00:00', 'Claire Martin', 'FAC002', 75.50, 2);

-- Insérer des données dans la table entrepot
INSERT INTO entrepot (reference_entrepot, adresse_entrepot, Id_region) VALUES 
('ENT001', '5 Rue des Entrepôts', 1),
('ENT002', '10 Avenue des Stockages', 2);

-- Insérer des données dans la table mouvement_stock
INSERT INTO mouvement_stock (reference_mouvement, quantite_mouvement, type_mouvement, date_heure_mouvement, Id_employe, Id_stock) VALUES 
('MOUV001', 10, 'Entrée', '2023-09-05 12:00:00', 1, 1),
('MOUV002', -5, 'Sortie', '2023-09-06 14:00:00', 1, 2),
('MOUV003', 20, 'Entrée', '2023-09-07 16:00:00', 1, 1);

-- Insérer des données dans la table choisi_panier
INSERT INTO choisi_panier (Id_panier, Id_produit) VALUES 
(1, 1),
(1, 2),
(2, 1);

-- Insérer des données dans la table choisi_commande
INSERT INTO choisi_commande (Id_produit, Id_commande) VALUES 
(1, 1),
(2, 2);

-- Insérer des données dans la table produit_stock
INSERT INTO produit_stock (Id_produit, Id_stock) VALUES 
(1, 1),
(2, 2);

-- Insérer des données dans la table produit_famille
INSERT INTO produit_famille (Id_produit, Id_famille) VALUES 
(1, 1),
(2, 2);

-- Insérer des données dans la table produit_fournisseur
INSERT INTO produit_fournisseur (Id_produit, Id_fournisseur) VALUES 
(1, 1),
(2, 2);

-- Insérer des données dans la table fournisseur_stock
INSERT INTO fournisseur_stock (Id_fournisseur, Id_mouvement_stock) VALUES 
(1, 1),
(2, 2);

-- Insérer des données dans la table produit_mouvement
INSERT INTO produit_mouvement (Id_produit, Id_mouvement_stock) VALUES 
(1, 1),
(2, 2);

-- Insérer des données dans la table entrepot_emplacement
INSERT INTO entrepot_emplacement (Id_entrepot, Id_emplacement) VALUES 
(1, 'EMPL001'),
(2, 'EMPL002');

-- Insérer des données dans la table mouvement_emplacement
INSERT INTO mouvement_emplacement (Id_mouvement_stock, Id_emplacement) VALUES 
(1, 'EMPL001'),
(2, 'EMPL002');

-- Insérer des données dans la table utilisateur_adresse
INSERT INTO utilisateur_adresse (Id_utilisateur, Id_adresse) VALUES 
(1, 1),
(2, 2);

-- Insérer des données dans la table employe_entrepot
INSERT INTO employe_entrepot (Id_entrepot, Id_employe) VALUES 
(1, 1),
(2, 2);