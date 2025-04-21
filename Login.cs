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
    public partial class Login : Form
    {
        public Login()
        {
            InitializeComponent();
        }
        
        private void button1_Click(object sender, EventArgs e)
        {
            
            SqlConnection conex = new SqlConnection("Data Source=ADMINRG-HAV7I43\\SQLEXPRESS;Initial Catalog=Sistema_Colegio;Integrated Security=True");
            try
            {
                conex.Open();
                SqlCommand cmd = new SqlCommand("SELECT * FROM usuarios WHERE Nombre_Usuario = @usuario AND Clave = @clave", conex);
                cmd.Parameters.AddWithValue("@usuario", textBox1.Text);
                cmd.Parameters.AddWithValue("@clave", textBox2.Text);

                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.HasRows)
                {
                    {
                        dr.Read(); 
                        MessageBox.Show("Bienvenidos al Sistema Escolar");
                        MenuPrincipal menuPrincipal = new MenuPrincipal();
                        this.Hide(); 
                        menuPrincipal.Show();
                    }

                   // MessageBox.Show("Bienvenidos al Sistema Escolar");
                   // MenuPrincipal menuPrincipal = new MenuPrincipal();
                   // menuPrincipal.Show();

                }
                else
                {
                    MessageBox.Show("Nombre o Contraseña de Usuario Incorrecta");
                    textBox1.Clear();
                    textBox2.Clear();
                    textBox1.Focus();
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error: " + ex.Message);
            }
            finally
            {
                conex.Close();
            }


        }

        private void button2_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void Login_Load(object sender, EventArgs e)
        {

        }
    }
}
