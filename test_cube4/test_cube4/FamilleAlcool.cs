using System;

public class Famille_alcool
{
	public int IdFamille { get; set; }
	public string ReferenceFamille { get; set; }
	public string NomFamille { get; set; }
	public string TypeFamille { get; set; }

	public Famille_alcool(int idFamille, string referenceFamille, string nomFamille, string typeFamille)
	{
		IdFamille = idFamille;
		ReferenceFamille = referenceFamille;
		NomFamille = nomFamille;
		TypeFamille = typeFamille;
	}
}
