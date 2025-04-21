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
    public partial class Asignar_Curso_y_Materia : Form
    {
        public Asignar_Curso_y_Materia()
        {
            InitializeComponent();
        }
        //public string connectionString = @"Data Source=ADMINRG-HAV7I43\\SQLEXPRESS;Initial Catalog=Sistema_Colegio;Integrated Security=True";
        string connectionString = @"Data Source=ADMINRG-HAV7I43\SQLEXPRESS;Initial Catalog=Sistema_Colegio;Integrated Security=True";

        private void Asignar_Curso_y_Materia_Load(object sender, EventArgs e)
        {
            try
            {
                CargarTodos();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error al cargar: " + ex.ToString());

            }
        }


        private void CargarDatos(string query, DataGridView grid)
        {
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                con.Open();
                SqlDataAdapter da = new SqlDataAdapter(query, con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                grid.DataSource = dt;
            }
        }

        private void CargarTodos()
        {
            CargarDatos("SELECT * FROM Curso", dataGridView1);
            CargarDatos("SELECT * FROM Materias", dataGridView2);
            CargarDatos("SELECT * FROM Profesores", dataGridView3);
        }



        private void button1_Click(object sender, EventArgs e)
        {
            int id_Curso = Convert.ToInt32(textBox1.Text);
            int id_Materia = Convert.ToInt32(textBox2.Text);
            int id_Profesor = Convert.ToInt32(textBox3.Text);



            try

            {

               



                

                using (SqlConnection connection = new SqlConnection(connectionString))
                {

                    string query = "INSERT INTO CursoMateria (id_Curso, id_Materia, id_Profesor) VALUES (@id_Curso, @id_Materia, @id_Profesor)";
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@id_Curso", id_Curso);
                        command.Parameters.AddWithValue("@id_Materia", id_Materia);
                        command.Parameters.AddWithValue("@id_Profesor", id_Profesor);
                        


                        connection.Open();
                        command.ExecuteNonQuery();
                        connection.Close();

                        MessageBox.Show("Asignado exitosamente.");
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error: " + ex.Message);
            }
        }
        private void dataGridView2_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.Close();
            MenuPrincipal menuPrincipal = new MenuPrincipal();
            menuPrincipal.Show();
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        
    }
}
