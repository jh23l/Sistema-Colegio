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
    public partial class AgregarEstudiantes : Form
    {
        public AgregarEstudiantes()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            string nombre = textBox1.Text;
            string apellido = textBox2.Text;
            int edad;

            
            if (int.TryParse(textBox3.Text, out edad))
            {
                
                DateTime fechaIngreso = DateTime.Now; 
                int cursoActual = 1; 
                string estado = "Activo"; 

                
                string connectionString = "Data Source=ADMINRG-HAV7I43\\SQLEXPRESS;Initial Catalog=Sistema_Colegio;Integrated Security=True";


                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    
                    string query = "INSERT INTO Estudiantes (Nombre, Apellidos, Edad, fecha_ingreso, curso_actual, estado) VALUES (@Nombre, @Apellido, @Edad, @FechaIngreso, @CursoActual, @Estado)";
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@Nombre", nombre);
                        command.Parameters.AddWithValue("@Apellido", apellido);
                        command.Parameters.AddWithValue("@Edad", edad);
                        command.Parameters.AddWithValue("@FechaIngreso", fechaIngreso);
                        command.Parameters.AddWithValue("@CursoActual", cursoActual);
                        command.Parameters.AddWithValue("@Estado", estado);

                        connection.Open();
                        command.ExecuteNonQuery();
                        connection.Close();

                        MessageBox.Show("Estudiante agregado exitosamente.");
                    }
                }
            }
            else
            {
                MessageBox.Show("Por favor, ingresa una edad válida.");
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.Close();
            MenuPrincipal menuPrincipal = new MenuPrincipal();
            menuPrincipal.Show();
        }

        private void AgregarEstudiantes_Load(object sender, EventArgs e)
        {

        }
    }
}
