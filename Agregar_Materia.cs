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
    public partial class Agregar_Materia : Form
    {
        public Agregar_Materia()
        {
            InitializeComponent();
        }
        

        private void Agregar_Materia_Load(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {


            string materia = textBox1.Text.Trim();
            if (string.IsNullOrEmpty(materia))
            {
                MessageBox.Show("El campo Materia no puede estar vacío.");
                return;
            }


            try

            {





                string connectionString = "Data Source=ADMINRG-HAV7I43\\SQLEXPRESS;Initial Catalog=Sistema_Colegio;Integrated Security=True";


                using (SqlConnection connection = new SqlConnection(connectionString))
                {

                    string query = "INSERT INTO Materias (nombre_materia) VALUES (@nombre_materia)";
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@nombre_materia", materia);
                        


                        connection.Open();
                        command.ExecuteNonQuery();
                        connection.Close();

                        MessageBox.Show("Materia agregada exitosamente.");
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
    }
}
