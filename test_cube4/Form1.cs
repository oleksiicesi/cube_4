using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MySql.Data.MySqlClient;

namespace test_cube4
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            panel1.Visible = false;
        }

        private void textBox3_TextChanged(object sender, EventArgs e)
        {

        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void button_login_Click(object sender, EventArgs e)
        {
            // Chaîne de connexion à la base de données MySQL
            string connectionString = "Server=localhost;Database=cube4;User ID=root;Password=root;SslMode=none;";

            // Récupérer les entrées utilisateur
            string email = textBox_username.Text;
            string password = textBox_password.Text;

            try
            {
                // Utiliser la classe Employe pour récupérer l'employé depuis la base de données
                Employe employe = Employe.GetEmployeByEmail(email, password, connectionString);

                if (employe != null)
                {
                    // Connexion réussie
                    MessageBox.Show("Connexion réussie !");
                    Form2 form2 = new Form2();
                    form2.Show();
                    this.Hide();
                    // Rediriger vers la prochaine page ou effectuer d'autres actions
                }
                else
                {
                    // Connexion échouée
                    MessageBox.Show("Email ou mot de passe incorrect.");
                }
            }
            catch (Exception ex)
            {
                // Gérer les erreurs
                MessageBox.Show("Erreur : " + ex.Message);
            }
        }
    }
}

