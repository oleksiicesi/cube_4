using System;

public class Produit
{
	public int IdProduit { get; set; }
	public string ReferenceProduit { get; set; }
	public string NomProduit { get; set; }
	public int PrixProduit { get; set; }
	public int TvaProduit { get; set; }
	public string ImageProduit { get; set; }
	public int PrixAchat { get; set; }
	
	public Produit(int idProduit, string referenceProduit, string nomProduit, int prixProduit, int tvaProduit, string imageProduit , int prixAchat)
	{
		IdProduit = idProduit;
		ReferenceProduit = referenceProduit;
		NomProduit = nomProduit;
		PrixProduit = prixProduit;
		TvaProduit = tvaProduit;
		ImageProduit = imageProduit;
		PrixAchat = prixAchat;
	}
}
