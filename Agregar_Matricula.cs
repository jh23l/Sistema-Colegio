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
    public partial class Agregar_Matricula : Form
    {
        public Agregar_Matricula()
        {
            InitializeComponent();
        }
        public string connectionString = @"Data Source=ADMINRG-HAV7I43\\SQLEXPRESS;Initial Catalog=Sistema_Colegio;Integrated Security=True";
        private void Agregar_Matricula_Load(object sender, EventArgs e)
        {
            
        }
       
        private void button1_Click(object sender, EventArgs e)
        {
            int id_Estudiante = Convert.ToInt32(textBox2.Text);
            int id_Curso = Convert.ToInt32(textBox3.Text);
            string año_lectivo = textBox1.Text;
            


            try

            {

                DateTime fechaMatricula = DateTime.Now;
                


                string connectionString = "Data Source=ADMINRG-HAV7I43\\SQLEXPRESS;Initial Catalog=Sistema_Colegio;Integrated Security=True";


                using (SqlConnection connection = new SqlConnection(connectionString))
                {

                    string query = "INSERT INTO Matricula (id_Estudiante, id_Curso, año_lectivo, fecha_matricula) VALUES (@id_Estudiante, @id_Curso, @año_lectivo, @fecha_matricula)";
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@id_Estudiante", id_Estudiante);
                        command.Parameters.AddWithValue("@id_Curso", id_Curso);
                        command.Parameters.AddWithValue("@año_lectivo", año_lectivo);
                        command.Parameters.AddWithValue("@fecha_matricula", fechaMatricula);


                        connection.Open();
                        command.ExecuteNonQuery();
                        connection.Close();

                        MessageBox.Show("Matricula agregada exitosamente.");
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

        
        
           


        private void textBox2_TextChanged(object sender, EventArgs e)
        {

        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}



