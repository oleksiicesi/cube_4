using System;

public class Panier
{
    public int IdPanier { get; set; }
    public string DateEstimLivraison { get; set; }
    public string PrixPanier { get; set; }

    public Panier(int idPanier, string dateestimLivraison, string prixPanier)
    {
        IdPanier = idPanier;
        DateEstimLivraison = dateestimLivraison;
        PrixPanier = prixPanier;

    }
}