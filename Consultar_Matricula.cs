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
    public partial class Consultar_Matricula : Form
    {
        public Consultar_Matricula()
        {
            InitializeComponent();
        }
        string connectionString = "Data Source=ADMINRG-HAV7I43\\SQLEXPRESS;Initial Catalog=Sistema_Colegio;Integrated Security=True";


        private void Consultar_Matricula_Load(object sender, EventArgs e)
        {
            try
            {
                CargarTodos();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error al cargar matriculas: " + ex.Message);
            }
        }

        private void CargarTodos()
        {
            using (SqlConnection conec = new SqlConnection(connectionString))
            {
                conec.Open();
                SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Matricula", conec);
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
                MessageBox.Show("Ingrese un ID de matrícula válido.");
                return;
            }

            string query = "SELECT m.id_Matricula, e.Nombre + ' ' + e.Apellidos AS Estudiante, c.nombre_curso, m.año_lectivo, m.fecha_matricula " +
                           "FROM Matricula m " +
                           "INNER JOIN Estudiantes e ON m.id_Estudiante = e.id_Estudiante " +
                           "INNER JOIN Curso c ON m.id_Curso = c.id_Curso " +
                           "WHERE m.id_Matricula = @idMatricula";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand(query, connection))
                {
                    cmd.Parameters.AddWithValue("@idMatricula", idMatricula);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);

                    dataGridView1.DataSource = dt;
                }
    }
}
    }
}
