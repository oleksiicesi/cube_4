using System;

public class Emplacement
{
	public int IdEmplacement { get; set; }
	public string CoordEmplacement { get; set; }
	public Emplacement(int idEmplacement, string coordEmplacement)
	{
		IdEmplacement = idEmplacement;
		CoordEmplacement = coordEmplacement;
	}
}
