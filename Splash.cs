using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Reflection.Emit;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Sistema_Colegio
{
    public partial class Splash : Form
    {
        public Splash()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            timer1.Start();
        }

        int num;
        private void timer1_Tick(object sender, EventArgs e)
        {
            {
                num += 2;
                if (num <= 100)
                {
                    progressBar1.Value = num;
                    label1.Text = $"{num}%";

                    if (num == 20)
                        label1.Text = "Cargando módulos...";
                    else if (num == 50)
                        label1.Text = "Conectando a la base de datos...";
                    else if (num == 80)
                        label1.Text = "Preparando entorno de trabajo...";
                }

                if (num >= 100)
                {
                    timer1.Stop();
                    this.Hide();
                    new Login().Show();
                }
            }

    }
}

}




