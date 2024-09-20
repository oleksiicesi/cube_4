using System;
using MySql.Data.MySqlClient;

public class Employe
{
    public int IdEmploye { get; set; }
    public string ReferenceEmploye { get; set; }
    public string NomEmploye { get; set; }
    public string PrenomEmploye { get; set; }
    public DateTime DateNaissanceEmploye { get; set; }
    public string EmailEmploye { get; set; }
    public string TelEmploye { get; set; }
    public string MotDePasseEmploye { get; set; }

    public Employe(int idEmploye, string referenceEmploye, string nomEmploye, string prenomEmploye, DateTime dateNaissanceEmploye,
                   string emailEmploye, string telEmploye, string motDePasseEmploye)
    {
        IdEmploye = idEmploye;
        ReferenceEmploye = referenceEmploye;
        NomEmploye = nomEmploye;
        PrenomEmploye = prenomEmploye;
        DateNaissanceEmploye = dateNaissanceEmploye;
        EmailEmploye = emailEmploye;
        TelEmploye = telEmploye;
        MotDePasseEmploye = motDePasseEmploye;
    }

    // Méthode pour récupérer un employé à partir de la base de données
    public static Employe GetEmployeByEmail(string email, string password, string connectionString)
    {
        Employe employe = null;
        string query = "SELECT * FROM employe WHERE email_employe = @Email AND mot_de_passe_employe = @Password";

        using (MySqlConnection connection = new MySqlConnection(connectionString))
        {
            try
            {
                connection.Open();
                MySqlCommand cmd = new MySqlCommand(query, connection);
                cmd.Parameters.AddWithValue("@Email", email);
                cmd.Parameters.AddWithValue("@Password", password);

                using (MySqlDataReader reader = cmd.ExecuteReader())
                {
                    if (reader.Read())
                    {
                        employe = new Employe(
                            reader.GetInt32("Id_employe"),
                            reader.GetString("reference_employe"),
                            reader.GetString("nom_employe"),
                            reader.GetString("prenom_employe"),
                            reader.GetDateTime("date_de_naissance_employe"),
                            reader.GetString("email_employe"),
                            reader.GetString("tel_employe"),
                            reader.GetString("mot_de_passe_employe")
                        );
                    }
                }
            }
            catch (Exception ex)
            {
                // Gérer les erreurs ici
                throw new Exception("Erreur lors de la récupération de l'employé : " + ex.Message);
            }
        }

        return employe;
    }
}
