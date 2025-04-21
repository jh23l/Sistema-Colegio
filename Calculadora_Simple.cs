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
    public partial class Calculadora_Simple : Form
    {
        public Calculadora_Simple()
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
            double numero1, numero2, resultado = 0;
            string operacion = comboBox1.SelectedItem?.ToString();

            if (!double.TryParse(textBox1.Text, out numero1) || !double.TryParse(textBox2.Text, out numero2))
            {
                MessageBox.Show("Ingresa números válidos.");
                return;
            }

            switch (operacion)
            {
                case "Suma":
                    resultado = numero1 + numero2;
                    break;
                case "Resta":
                    resultado = numero1 - numero2;
                    break;
                case "Multiplicación":
                    resultado = numero1 * numero2;
                    break;
                case "División":
                    if (numero2 == 0)
                    {
                        MessageBox.Show("No se puede dividir por cero.");
                        return;
                    }
                    resultado = numero1 / numero2;
                    break;
                default:
                    MessageBox.Show("Selecciona una operación.");
                    return;
            }

            textBox3.Text = "Resultado: " + resultado.ToString("N2");
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void Caulculadora_Simple_Load(object sender, EventArgs e)
        {
            {
                comboBox1.Items.Add("Suma");
                comboBox1.Items.Add("Resta");
                comboBox1.Items.Add("Multiplicación");
                comboBox1.Items.Add("División");
                comboBox1.SelectedIndex = 0;
            }
        }
    }
}
