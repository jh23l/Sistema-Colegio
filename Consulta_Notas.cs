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
    public partial class Consulta_Notas : Form
    {
        public Consulta_Notas()
        {
            InitializeComponent();
        }

        string connectionString = "Data Source=ADMINRG-HAV7I43\\SQLEXPRESS;Initial Catalog=Sistema_Colegio;Integrated Security=True";

        private void Consulta_Notas_Load(object sender, EventArgs e)
        {
            try
            {
                CargarTodos();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error al cargar notas: " + ex.Message);
            }
        }

        private void CargarTodos()
        {
            using (SqlConnection conec = new SqlConnection(connectionString))
            {
                conec.Open();
                SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Notas", conec);
                DataTable dt = new DataTable();
                da.Fill(dt);
                dataGridView1.DataSource = dt;
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.Close();
            MenuPrincipal menuPrincipal = new MenuPrincipal();
            menuPrincipal.Show();
        }

        private void button1_Click(object sender, EventArgs e)
        {


            int idMatricula;

            if (!int.TryParse(textBox1.Text, out idMatricula))
            {
                MessageBox.Show("Por favor, ingresa un ID de matrícula válido.");
                return;
            }

            string connectionString = "Data Source=ADMINRG-HAV7I43\\SQLEXPRESS;Initial Catalog=Sistema_Colegio;Integrated Security=True";


            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = @"
            SELECT 
                e.Nombre,
                e.Apellidos,
                ma.id_Matricula,
                mat.nombre_materia AS Materia,
                n.trimestre,
                n.nota
            FROM Notas n
            INNER JOIN Matricula ma ON n.id_Matricula = ma.id_Matricula
            INNER JOIN Estudiantes e ON ma.id_Estudiante = e.id_Estudiante
            INNER JOIN CursoMateria cm ON n.id_CursoMateria = cm.id_CursoMateria
            INNER JOIN Materias mat ON cm.id_Materia = mat.id_Materia
            WHERE n.id_Matricula = @idMatricula";

                SqlDataAdapter adapter = new SqlDataAdapter(query, connection);
                adapter.SelectCommand.Parameters.AddWithValue("@idMatricula", idMatricula);

                DataTable dt = new DataTable();

                try
                {
                    adapter.Fill(dt);
                    dataGridView1.DataSource = dt;
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Error al consultar notas: " + ex.Message);
                }
            }
        }



        
        

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void textBox2_TextChanged(object sender, EventArgs e)
        {

        }
        
    }
}
