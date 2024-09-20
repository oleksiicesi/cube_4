using System;

public class AnneeProduction
{
	public int IdAnneeProduction { get; set; }
	public string AnneeProduit { get; set; }

	public AnneeProduction(int idAnneeProduction, string anneeProduit)
	{
		IdAnneeProduction = idAnneeProduction;
		AnneeProduit = anneeProduit;
	}
}
