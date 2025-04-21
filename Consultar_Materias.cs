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
    public partial class Consultar_Materias : Form
    {
        public Consultar_Materias()
        {
            InitializeComponent();


        }
        string connectionString = "Data Source=ADMINRG-HAV7I43\\SQLEXPRESS;Initial Catalog=Sistema_Colegio;Integrated Security=True";


        private void Consultar_Materias_Load(object sender, EventArgs e)
        {
            {
                try
                {
                    CargarTodos();
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Error al cargar Materias: " + ex.Message);

                }
            }
        }

        private void CargarTodos()
        {
            using (SqlConnection conec = new SqlConnection(connectionString))
            {
                conec.Open();
                SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Materias", conec);
                DataTable dt = new DataTable();
                da.Fill(dt);
                dataGridView1.DataSource = dt;
            }
        }
        
        

        private void button1_Click(object sender, EventArgs e)
        {
            string filtro = textBox1.Text.Trim();

            string query = "SELECT id_Materia, nombre_materia FROM Materias";

            if (!string.IsNullOrEmpty(filtro))
            {
                query += " WHERE id_Materia LIKE @filtro OR nombre_materia LIKE @filtroNombre";
            }

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand(query, connection))
                {
                    if (!string.IsNullOrEmpty(filtro))
                    {
                        cmd.Parameters.AddWithValue("@filtro", filtro + "%");
                        cmd.Parameters.AddWithValue("@filtroNombre", "%" + filtro + "%"); 
                    }

                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);

                    dataGridView1.DataSource = dt;
                }
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
