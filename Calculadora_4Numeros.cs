using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Sistema_Colegio
{
    public partial class Calculadora_4Numeros : Form
    {
        public Calculadora_4Numeros()
        {
            InitializeComponent();
        }

        private void label4_Click(object sender, EventArgs e)
        {

        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.Close();
            MenuPrincipal menuPrincipal = new MenuPrincipal();
            menuPrincipal.Show();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            double nota1, nota2, nota3, nota4, promedio;

            
            if (!double.TryParse(textBox1.Text, out nota1) ||
                !double.TryParse(textBox2.Text, out nota2) ||
                !double.TryParse(textBox3.Text, out nota3) ||
                !double.TryParse(textBox4.Text, out nota4))
            {
                MessageBox.Show("Por favor ingresa solo números válidos en todas las notas.");
                return;
            }

            promedio = (nota1 + nota2 + nota3 + nota4) / 4;
            label6.Text = $"Promedio: {promedio:N2}";
        }
    }
    }

