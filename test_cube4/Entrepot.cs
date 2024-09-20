using System;

public class Entreprot
{
	public int IdEntrepot { get; set; }
	public string ReferenceEntrepot { get; set; }
	public string AdresseEntrepot { get; set; }

	public void Entrepot(int idEntrepot, string referenceEntrepot, string adresseEntrepot)
	{
		IdEntrepot = idEntrepot;
		ReferenceEntrepot = referenceEntrepot;
		AdresseEntrepot = adresseEntrepot;
	}
}
