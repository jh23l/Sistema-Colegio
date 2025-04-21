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
    public partial class Consultar_Curso : Form
    {
        public Consultar_Curso()
        {
            InitializeComponent();
        }
        public readonly string cadenaConexion = "Data Source=ADMINRG-HAV7I43\\SQLEXPRESS;Initial Catalog=Sistema_Colegio;Integrated Security=True";


        
       
        private void Consultar_Curso_Load(object sender, EventArgs e)
        {
            try
            {
                CargarTodos();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error al cargar Curso: " + ex.Message);
            }
        }

        private void CargarTodos()
        {
            using (SqlConnection conec = new SqlConnection(cadenaConexion))
            {
                conec.Open();
                SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Curso", conec);
                DataTable dt = new DataTable();
                da.Fill(dt);
                dataGridView1.DataSource = dt;
            }
        }

        private void BuscarPorId(string idCurso)
        {
            using (SqlConnection conec = new SqlConnection(cadenaConexion))
            {


                try
                {
                    conec.Open();
                    SqlCommand cmd = new SqlCommand("SELECT * FROM Curso WHERE id_Curso = @id", conec);
                    cmd.Parameters.AddWithValue("@id", idCurso);

                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    dataGridView1.DataSource = dt;

                    if (dt.Rows.Count == 0)
                    {
                        MessageBox.Show("Este ID no existe");
                    }
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Error al buscar el Curso: " + ex.Message);
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
                MessageBox.Show("Ingresa un ID de el profesor para buscar.");
                textBox1.Focus();
            }
        }

        private void button1_Click_1(object sender, EventArgs e)
        {
            if (!string.IsNullOrWhiteSpace(textBox1.Text))
            {
                BuscarPorId(textBox1.Text.Trim());
            }
            else
            {
                MessageBox.Show("Ingresa un ID de el profesor para buscar.");
                textBox1.Focus();
            }
        }

        private void button2_Click_1(object sender, EventArgs e)
        {
            this.Close();
            MenuPrincipal menuPrincipal = new MenuPrincipal();
            menuPrincipal.Show();
        }
    }
}
