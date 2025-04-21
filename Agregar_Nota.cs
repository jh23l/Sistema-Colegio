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

namespace Sistema_Colegio
{
    public partial class Agregar_Nota : Form
    {
        public Agregar_Nota()
        {
            InitializeComponent();
        }
        public string connectionString = @"Data Source=ADMINRG-HAV7I43\\SQLEXPRESS;Initial Catalog=Sistema_Colegio;Integrated Security=True";
        
        private void Agregar_Nota_Load(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (!int.TryParse(textBox1.Text, out int id_Matricula) ||
                !int.TryParse(textBox2.Text, out int id_CursoMateria) ||
                !int.TryParse(textBox4.Text, out int nota))
            {
                MessageBox.Show("Verifica que los IDs y la nota sean números válidos.");
                return;
            }

            string trimestre = textBox3.Text.Trim();
            if (string.IsNullOrEmpty(trimestre))
            {
                MessageBox.Show("El campo Trimestre no puede estar vacío.");
                return;
            }


            try

            {


                


                string connectionString = "Data Source=ADMINRG-HAV7I43\\SQLEXPRESS;Initial Catalog=Sistema_Colegio;Integrated Security=True";


                using (SqlConnection connection = new SqlConnection(connectionString))
                {

                    string query = "INSERT INTO Notas (id_Matricula, id_CursoMateria, trimestre, nota) VALUES (@id_Matricula, @id_CursoMateria, @trimestre, @nota)";
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@id_Matricula", id_Matricula);
                        command.Parameters.AddWithValue("@id_CursoMateria", id_CursoMateria);
                        command.Parameters.AddWithValue("@trimestre", trimestre);
                        command.Parameters.AddWithValue("@nota", nota);


                        connection.Open();
                        command.ExecuteNonQuery();
                        connection.Close();

                        MessageBox.Show("Nota agregada exitosamente.");
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
