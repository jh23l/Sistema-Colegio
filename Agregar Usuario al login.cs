using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using static System.Windows.Forms.VisualStyles.VisualStyleElement;

namespace Sistema_Colegio
{
    public partial class Agregar_Usuario_al_login : Form
    {
        public Agregar_Usuario_al_login()
        {
            InitializeComponent();
        }
        string connectionString = @"Data Source=ADMINRG-HAV7I43\SQLEXPRESS;Initial Catalog=Sistema_Colegio;Integrated Security=True";

        private void button1_Click(object sender, EventArgs e)
        {
            string Usuario = textBox1.Text;
            string Clave = textBox2.Text;



            try

            {







                using (SqlConnection connection = new SqlConnection(connectionString))
                {

                    string query = "INSERT INTO Usuarios (Nombre_Usuario, Clave) VALUES (@Nombre, @Clave)";
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@Nombre", Usuario);
                        command.Parameters.AddWithValue("@Clave", Clave);
                   



                        connection.Open();
                        command.ExecuteNonQuery();
                        connection.Close();

                        MessageBox.Show("Creado exitosamente.");
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error: " + ex.Message);
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.Close();
            MenuPrincipal menuPrincipal = new MenuPrincipal();
            menuPrincipal.Show();
        }

        private void Agregar_Usuario_al_login_Load(object sender, EventArgs e)
        {

        }

        private void groupBox1_Enter(object sender, EventArgs e)
        {

        }
    }
}
