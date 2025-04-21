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
    public partial class Agregar_Profesor : Form
    {
        public Agregar_Profesor()
        {
            InitializeComponent();
        }

        private void Agregar_Profesor_Load(object sender, EventArgs e)
        {

        }
        public string connectionString = @"Data Source=ADMINRG-HAV7I43\\SQLEXPRESS;Initial Catalog=Sistema_Colegio;Integrated Security=True";
        private void Agregar_Matricula_Load(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.Close();
            MenuPrincipal menuPrincipal = new MenuPrincipal();
            menuPrincipal.Show();
        }

        private void button1_Click_1(object sender, EventArgs e)
        {
            string nombre = textBox1.Text;
            string apellido = textBox2.Text;
            string titulo_profesional = textBox3.Text;
            DateTime fecha_nacimiento;
            if (!DateTime.TryParse(textBox4.Text, out fecha_nacimiento))
            {
                MessageBox.Show("Por favor ingresa una fecha válida de nacimiento.");
                return;
            }
            string sexo = textBox5.Text;
            if (string.IsNullOrWhiteSpace(nombre) ||
                string.IsNullOrWhiteSpace(apellido) ||
                string.IsNullOrWhiteSpace(titulo_profesional) ||
                string.IsNullOrWhiteSpace(sexo))
            {
                MessageBox.Show("Por favor completa todos los campos obligatorios.");
                return;
            }




            try

            {

                DateTime fecha_ingreso = DateTime.Now;
                string Estado = "activo";



                string connectionString = "Data Source=ADMINRG-HAV7I43\\SQLEXPRESS;Initial Catalog=Sistema_Colegio;Integrated Security=True";


                using (SqlConnection connection = new SqlConnection(connectionString))
                {

                    string query = "INSERT INTO profesores (nombre, apellido, titulo_profesional, fecha_ingreso, estado, fecha_nacimiento, sexo) VALUES (@nombre, @apellido, @titulo_profesional, @fecha_ingreso, @estado, @fecha_nacimiento, @sexo)";
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@nombre", nombre);
                        command.Parameters.AddWithValue("@apellido", apellido);
                        command.Parameters.AddWithValue("@titulo_profesional", titulo_profesional);
                        command.Parameters.AddWithValue("@fecha_ingreso", fecha_ingreso);
                        command.Parameters.AddWithValue("@estado", Estado);
                        command.Parameters.AddWithValue("@fecha_nacimiento", fecha_nacimiento);
                        command.Parameters.AddWithValue("@sexo", sexo);



                        connection.Open();
                        command.ExecuteNonQuery();
                        connection.Close();

                        MessageBox.Show("Profesor agregada exitosamente.");
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error: " + ex.Message);
            }
        }

        private void groupBox1_Enter(object sender, EventArgs e)
        {

        }
    }
}
