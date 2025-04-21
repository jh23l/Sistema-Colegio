using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace Sistema_Colegio
{
    public partial class Consulta_Estudiante : Form
    {
        private readonly string cadenaConexion = "Data Source=ADMINRG-HAV7I43\\SQLEXPRESS;Initial Catalog=Sistema_Colegio;Integrated Security=True";

        public Consulta_Estudiante()
        {
            InitializeComponent();
        }

        private void Consulta_Estudiante_Load(object sender, EventArgs e)
        {
            try
            {
                CargarTodos();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error al cargar estudiantes: " + ex.Message);
            }
        }

        private void CargarTodos()
        {
            using (SqlConnection conec = new SqlConnection(cadenaConexion))
            {
                conec.Open();
                SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Estudiantes", conec);
                DataTable dt = new DataTable();
                da.Fill(dt);
                dataGridView1.DataSource = dt;
            }
        }

        private void BuscarPorId(string idEstudiante)
        {
            using (SqlConnection conec = new SqlConnection(cadenaConexion))
            {
                try
                {
                    conec.Open();
                    SqlCommand cmd = new SqlCommand("SELECT * FROM Estudiantes WHERE id_Estudiante = @id", conec);
                    cmd.Parameters.AddWithValue("@id", idEstudiante);

                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    dataGridView1.DataSource = dt;

                    if (dt.Rows.Count == 0)
                    {
                        MessageBox.Show("Este Id no existe");
                    }
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Error al buscar estudiante: " + ex.Message);
                }
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
            if (!string.IsNullOrWhiteSpace(textBox1.Text))
            {
                BuscarPorId(textBox1.Text.Trim());
            }
            else
            {
                MessageBox.Show("Ingresa un ID de estudiante para buscar.");
                textBox1.Focus();
            }
        }

        private void groupBox1_Enter(object sender, EventArgs e)
        {

        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }
    }
    //SqlConnection conex = new SqlConnection("Data Source=ADMINRG-HAV7I43\\SQLEXPRESS;Initial Catalog=Sistema_Colegio;Integrated Security=True");
    // public void Buscar()
    // {
    //   using (SqlConnection conec = new SqlConnection("Data Source=ADMINRG-HAV7I43\\SQLEXPRESS;Initial Catalog=Sistema_Colegio;Integrated Security=True"))
    // {
    //    SqlCommand cmd = new SqlCommand("SELECT * FROM Estudiantes WHERE id_Estudiante = @id", conec);
    //   cmd.Parameters.AddWithValue("@id", textBox1.Text);

    //  SqlDataAdapter da = new SqlDataAdapter(cmd);
    //   DataSet ds = new DataSet();

    // da.Fill(ds, "Estudiantes");
    // dataGridView1.DataSource = ds.Tables["Estudiantes"];

    //  if (ds.Tables["Estudiantes"].Rows.Count > 0)
    // {
    //  textBox1.Focus();
}
    //  else
    //  {
    //MessageBox.Show("Este Id no existe");

//  }
//  }

//public Consulta_Estudiante()
//{
//InitializeComponent();
//  }
//
//private void button2_Click(object sender, EventArgs e)
//{
//this.Close();
//this.Hide();
//MenuPrincipal menuPrincipal = new MenuPrincipal();
//menuPrincipal.Show();

//}

//private void Consulta_Estudiante_Load(object sender, EventArgs e)
//{
//Buscar();
// }
// }
//}
