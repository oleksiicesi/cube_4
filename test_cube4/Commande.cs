using System;

public class Commande
{
    public int IdCommande { get; set; }
    public string ReferenceCommande { get; set; }
    public string DateHeureCommande { get; set; }
    public string QuantiteCommande { get; set; }
    public string NomPrenomCommande { get; set; }
    public string ReferenceFacture { get; set; }

    public int PrixCommande { get; set; }

    public Commande(int idCommande, string referenceCommande, string dateheureCommande, string quantiteCommande, string nomprenomCommande, string referenceFacture, int prixCommande)
    {
        IdCommande = idCommande;
        ReferenceCommande = referenceCommande;
        DateHeureCommande = dateheureCommande;
        QuantiteCommande = quantiteCommande;
        NomPrenomCommande = nomprenomCommande;
        ReferenceFacture = referenceFacture;
        PrixCommande = prixCommande;
    }
}