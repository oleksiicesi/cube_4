using System;

public class Employe
{
    public int IdEmploye { get; set; }
    public string ReferenceEmploye { get; set; }
    public string NomEmploye { get; set; }
    public string PrenomEmploye { get; set; }
    public string DateNaissanceEmploye { get; set; }
    public string EmailEmploye { get; set; }
    public string TelEmploye { get; set; }
    public string MotDePasseEmploye { get; set; }

    public Employe(int idEmploye, string referenceEmploye, string nomEmploye, string prenomEmploye, string datenaissanceEmploye,
                       string emailEmploye, string telEmploye, string motdepasseEmploye)
    {
        IdEmploye = idEmploye;
        ReferenceEmploye = referenceEmploye;
        NomEmploye = nomEmploye;
        PrenomEmploye = prenomEmploye;
        DateNaissanceEmploye = datenaissanceEmploye;
        EmailEmploye = emailEmploye;
        TelEmploye = telEmploye;
        MotDePasseEmploye = motdepasseEmploye;
    }
}