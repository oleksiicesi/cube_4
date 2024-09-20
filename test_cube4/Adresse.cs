using System;

public class Adresse
{
    public int IdAdresse { get; set; }
    public string AdresseFacturation { get; set; }
    public string AdresseLivraison { get; set; }

    public Adresse(int idAdresse, string adresseFacturation, string adresseLivraison)
    {
        IdAdresse = idAdresse;
        AdresseFacturation = adresseFacturation;
        AdresseLivraison = adresseLivraison;

    }
}