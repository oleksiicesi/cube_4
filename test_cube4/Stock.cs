using System;

public class Stock
{
    public int IdStock { get; set; }
    public string ReferenceStock { get; set; }
    public string QuantiteStock { get; set; }

    public Stock(int idStock, string referenceStock, string quantiteStock)
    {
        IdStock = idStock;
        ReferenceStock = referenceStock;
        QuantiteStock = quantiteStock;

    }

}


