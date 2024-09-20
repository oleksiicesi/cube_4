using System;

public class MouvementStock
{
	public int IdMouvementStock { get; set; }
	public string ReferenceMouvement { get; set; }
	public int QuantiteMouvement { get; set; }
	public string TypeMouvement { get; set; }
	public string DateHeureMouvement { get; set; }


	public MouvementStock(int idMouvementStock, string referenceMouvement, int quantiteMouvement, string typeMouvement, string dateHeureMouvement)
	{
		IdMouvementStock = idMouvementStock;
		ReferenceMouvement = referenceMouvement;
		QuantiteMouvement = quantiteMouvement;
		TypeMouvement = typeMouvement;
		DateHeureMouvement = dateHeureMouvement;
	}
}
