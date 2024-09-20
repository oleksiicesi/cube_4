using System;

public class Fournisseur
{
    public int IdFournisseur { get; set; } 
    public string ReferenceFournisseur { get; set; }
    public string NomFournisseur { get; set; }
    public string AdresseFournisseur { get; set; }
    public string NumeroTelFournisseur { get; set; }
    public string EmailFournisseur { get; set; }

    public Fournisseur(int idFournisseur, string referenceFournisseur, string nomFournisseur,
                       string adresseFournisseur, string numeroTelFournisseur, string emailFournisseur)
    {
        IdFournisseur = idFournisseur;
        ReferenceFournisseur = referenceFournisseur;
        NomFournisseur = nomFournisseur;
        AdresseFournisseur = adresseFournisseur;
        NumeroTelFournisseur = numeroTelFournisseur;
        EmailFournisseur = emailFournisseur;
    }

}

