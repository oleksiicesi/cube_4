using System;

public class Region
{
    public int IdRegion { get; set; }
    public string CodeRegion { get; set; }
    public string LibelleRegion { get; set; }

    public Region(int idRegion, string codeRegion, string libelleRegion)
    {
        IdRegion = idRegion;
        CodeRegion = codeRegion;
        LibelleRegion = libelleRegion;

    }
}