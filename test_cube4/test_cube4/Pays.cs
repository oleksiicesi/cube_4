using System;

public class Pays
{
    public int IdPays { get; set; }
    public string CodePays { get; set; }
    public string LibellePays { get; set; }

    public Pays(int idPays, string codePays, string libellePays)
    {
        IdPays = idPays;
        CodePays = codePays;
        LibellePays = libellePays;

    }
}
