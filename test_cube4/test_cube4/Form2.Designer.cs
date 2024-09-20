
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
            bouton_article = new System.Windows.Forms.Button();
            bouton_Fournisseur = new System.Windows.Forms.Button();
            boutton_Commande = new System.Windows.Forms.Button();
            bouton_Mouvement_de_Stock = new System.Windows.Forms.Button();
            SuspendLayout();
            // 
            // bouton_article
            // 
            bouton_article.BackColor = System.Drawing.Color.DarkRed;
            bouton_article.Font = new System.Drawing.Font("Segoe UI", 24F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            bouton_article.Location = new System.Drawing.Point(83, 53);
            bouton_article.Name = "bouton_article";
            bouton_article.Size = new System.Drawing.Size(210, 80);
            bouton_article.TabIndex = 0;
            bouton_article.Text = "Article";
            bouton_article.UseVisualStyleBackColor = false;
            // 
            // bouton_Fournisseur
            // 
            bouton_Fournisseur.BackColor = System.Drawing.Color.DarkRed;
            bouton_Fournisseur.Font = new System.Drawing.Font("Segoe UI", 24F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            bouton_Fournisseur.Location = new System.Drawing.Point(461, 53);
            bouton_Fournisseur.Name = "bouton_Fournisseur";
            bouton_Fournisseur.Size = new System.Drawing.Size(280, 80);
            bouton_Fournisseur.TabIndex = 1;
            bouton_Fournisseur.Text = "Fournisseur";
            bouton_Fournisseur.UseVisualStyleBackColor = false;
            // 
            // boutton_Commande
            // 
            boutton_Commande.BackColor = System.Drawing.Color.DarkRed;
            boutton_Commande.Font = new System.Drawing.Font("Segoe UI", 24F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            boutton_Commande.Location = new System.Drawing.Point(1531, 56);
            boutton_Commande.Name = "boutton_Commande";
            boutton_Commande.Size = new System.Drawing.Size(280, 74);
            boutton_Commande.TabIndex = 3;
            boutton_Commande.Text = "Commande";
            boutton_Commande.UseVisualStyleBackColor = false;
            // 
            // bouton_Mouvement_de_Stock
            // 
            bouton_Mouvement_de_Stock.BackColor = System.Drawing.Color.DarkRed;
            bouton_Mouvement_de_Stock.Font = new System.Drawing.Font("Segoe UI", 24F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            bouton_Mouvement_de_Stock.Location = new System.Drawing.Point(868, 53);
            bouton_Mouvement_de_Stock.Name = "bouton_Mouvement_de_Stock";
            bouton_Mouvement_de_Stock.Size = new System.Drawing.Size(526, 80);
            bouton_Mouvement_de_Stock.TabIndex = 4;
            bouton_Mouvement_de_Stock.Text = "Mouvement de Stock";
            bouton_Mouvement_de_Stock.UseVisualStyleBackColor = false;
            // 
            // Form2
            // 
            AutoScaleDimensions = new System.Drawing.SizeF(10F, 25F);
            AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            ClientSize = new System.Drawing.Size(2410, 1193);
            Controls.Add(bouton_Mouvement_de_Stock);
            Controls.Add(boutton_Commande);
            Controls.Add(bouton_Fournisseur);
            Controls.Add(bouton_article);
            Name = "Form2";
            Text = "Form2";
            ResumeLayout(false);
        }

        #endregion

        private System.Windows.Forms.Button bouton_article;
        private System.Windows.Forms.Button bouton_Fournisseur;
        private System.Windows.Forms.Button boutton_Commande;
        private System.Windows.Forms.Button bouton_Mouvement_de_Stock;
    }
}