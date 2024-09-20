
namespace test_cube4
{
    partial class Form2
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            Bouton_Articles = new System.Windows.Forms.Button();
            Bouton_Fournisseurs = new System.Windows.Forms.Button();
            Bouton_Categories = new System.Windows.Forms.Button();
            Bouton_Commandes = new System.Windows.Forms.Button();
            Bouton_Deconnexion = new System.Windows.Forms.Button();
            SuspendLayout();
            // 
            // Bouton_Articles
            // 
            Bouton_Articles.BackColor = System.Drawing.Color.DarkRed;
            Bouton_Articles.Font = new System.Drawing.Font("Segoe UI", 20F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            Bouton_Articles.ForeColor = System.Drawing.SystemColors.ControlLight;
            Bouton_Articles.Location = new System.Drawing.Point(84, 44);
            Bouton_Articles.Name = "Bouton_Articles";
            Bouton_Articles.Size = new System.Drawing.Size(232, 76);
            Bouton_Articles.TabIndex = 0;
            Bouton_Articles.Text = "Articles";
            Bouton_Articles.UseVisualStyleBackColor = false;
            // 
            // Bouton_Fournisseurs
            // 
            Bouton_Fournisseurs.BackColor = System.Drawing.Color.DarkRed;
            Bouton_Fournisseurs.Font = new System.Drawing.Font("Segoe UI", 20F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            Bouton_Fournisseurs.ForeColor = System.Drawing.SystemColors.ControlLight;
            Bouton_Fournisseurs.Location = new System.Drawing.Point(501, 41);
            Bouton_Fournisseurs.Name = "Bouton_Fournisseurs";
            Bouton_Fournisseurs.Size = new System.Drawing.Size(255, 76);
            Bouton_Fournisseurs.TabIndex = 1;
            Bouton_Fournisseurs.Text = "Fournisseurs";
            Bouton_Fournisseurs.UseVisualStyleBackColor = false;
            // 
            // Bouton_Categories
            // 
            Bouton_Categories.BackColor = System.Drawing.Color.DarkRed;
            Bouton_Categories.Font = new System.Drawing.Font("Segoe UI", 20F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            Bouton_Categories.ForeColor = System.Drawing.SystemColors.ControlLight;
            Bouton_Categories.Location = new System.Drawing.Point(947, 44);
            Bouton_Categories.Name = "Bouton_Categories";
            Bouton_Categories.Size = new System.Drawing.Size(517, 73);
            Bouton_Categories.TabIndex = 2;
            Bouton_Categories.Text = "Mouvement de stock";
            Bouton_Categories.UseVisualStyleBackColor = false;
            // 
            // Bouton_Commandes
            // 
            Bouton_Commandes.BackColor = System.Drawing.Color.DarkRed;
            Bouton_Commandes.Font = new System.Drawing.Font("Segoe UI", 20F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            Bouton_Commandes.ForeColor = System.Drawing.SystemColors.ControlLight;
            Bouton_Commandes.Location = new System.Drawing.Point(1584, 46);
            Bouton_Commandes.Name = "Bouton_Commandes";
            Bouton_Commandes.Size = new System.Drawing.Size(254, 71);
            Bouton_Commandes.TabIndex = 3;
            Bouton_Commandes.Text = "Commandes";
            Bouton_Commandes.UseVisualStyleBackColor = false;
            // 
            // Bouton_Deconnexion
            // 
            Bouton_Deconnexion.BackColor = System.Drawing.Color.DarkRed;
            Bouton_Deconnexion.Font = new System.Drawing.Font("Segoe UI", 20F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            Bouton_Deconnexion.ForeColor = System.Drawing.SystemColors.ControlLight;
            Bouton_Deconnexion.Location = new System.Drawing.Point(776, 1056);
            Bouton_Deconnexion.Name = "Bouton_Deconnexion";
            Bouton_Deconnexion.Size = new System.Drawing.Size(266, 73);
            Bouton_Deconnexion.TabIndex = 4;
            Bouton_Deconnexion.Text = "Deconnexion";
            Bouton_Deconnexion.UseVisualStyleBackColor = false;
            // 
            // Form2
            // 
            AutoScaleDimensions = new System.Drawing.SizeF(10F, 25F);
            AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            ClientSize = new System.Drawing.Size(2399, 1180);
            Controls.Add(Bouton_Deconnexion);
            Controls.Add(Bouton_Commandes);
            Controls.Add(Bouton_Categories);
            Controls.Add(Bouton_Fournisseurs);
            Controls.Add(Bouton_Articles);
            Name = "Form2";
            Text = "Form2";
            Load += Form2_Load;
            ResumeLayout(false);
        }

        #endregion

        private System.Windows.Forms.Button Bouton_Articles;
        private System.Windows.Forms.Button Bouton_Fournisseurs;
        private System.Windows.Forms.Button Bouton_Categories;
        private System.Windows.Forms.Button Bouton_Commandes;
        private System.Windows.Forms.Button Bouton_Deconnexion;
    }
}