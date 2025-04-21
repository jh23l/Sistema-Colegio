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
    public partial class MenuPrincipal : Form
    {
        public MenuPrincipal()
        {
            InitializeComponent();
        }

        private void salirToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void eSTUDIANTEToolStripMenuItem_Click(object sender, EventArgs e)
        {
            try
            {
                this.Close();
                Consulta_Estudiante consulta_Estudiante = new Consulta_Estudiante();
                consulta_Estudiante.Show();
                consulta_Estudiante.BringToFront();
                consulta_Estudiante.Activate();

            }
            catch (Exception ex)
            {
                MessageBox.Show("Error al abrir el formulario: " + ex.Message);
            }
        }

        private void aToolStripMenuItem_Click(object sender, EventArgs e)
        {
            try
            {
                this.Close();
                AgregarEstudiantes agregarEstudiantes = new AgregarEstudiantes();
                agregarEstudiantes.Show();
                agregarEstudiantes.BringToFront();
                agregarEstudiantes.Activate();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error al abrir el formulario: " + ex.Message);
            }
        }

        private void profesoresToolStripMenuItem_Click(object sender, EventArgs e)
        {
            try
            {
                this.Close();
                Consulta_Profesores consulta_Profesores = new Consulta_Profesores();
                consulta_Profesores.Show();
                consulta_Profesores.BringToFront();
                consulta_Profesores.Activate();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error al abrir el formulario: " + ex.Message);
            }
        }

        private void notasToolStripMenuItem_Click(object sender, EventArgs e)
        {
            try
            {
                this.Close();
                Consulta_Notas consulta_Notas = new Consulta_Notas();
                consulta_Notas.Show();
                consulta_Notas.BringToFront();
                consulta_Notas.Activate();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error al abrir el formulario: " + ex.Message);
            }
        }

        private void cALCULADORASIMPLEToolStripMenuItem_Click(object sender, EventArgs e)
        {
             try
            {
                this.Close();
                Calculadora_Simple calculadora_Simple = new Calculadora_Simple();
                calculadora_Simple.Show();
                calculadora_Simple.BringToFront();
                calculadora_Simple.Activate();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error al abrir el formulario: " + ex.Message);
            }
        }

        private void calculadoraDe4NumerosToolStripMenuItem_Click(object sender, EventArgs e)
        {
            try
            {
                this.Close();
                Calculadora_4Numeros calculadora_4Numeros = new Calculadora_4Numeros();
                calculadora_4Numeros.Show();
                calculadora_4Numeros.BringToFront();
                calculadora_4Numeros.Activate();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error al abrir el formulario: " + ex.Message);
            }
        }

        private void agregarMatriculaToolStripMenuItem_Click(object sender, EventArgs e)
        {
            try
            {
                this.Close();
                Agregar_Matricula agregar_Matricula = new Agregar_Matricula();
                agregar_Matricula.Show();
                agregar_Matricula.BringToFront();
                agregar_Matricula.Activate();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error al abrir el formulario: " + ex.Message);
            }
        }

        private void cursosToolStripMenuItem_Click(object sender, EventArgs e)
        {
            try
            {
                this.Close();
                Consultar_Curso consultar_Curso = new Consultar_Curso();
                consultar_Curso.Show();
                consultar_Curso.BringToFront();
                consultar_Curso.Activate();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error al abrir el formulario: " + ex.Message);
            }
        }

        private void agregarProfesorToolStripMenuItem_Click(object sender, EventArgs e)
        {
            try
            {
                this.Close();
                Agregar_Profesor agregar_Profesor = new Agregar_Profesor();
                agregar_Profesor.Show();
                agregar_Profesor.BringToFront();
                agregar_Profesor.Activate();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error al abrir el formulario: " + ex.Message);
            }
        }

        private void agregarMateriasToolStripMenuItem_Click(object sender, EventArgs e)
        {
            try
            {
                this.Close();
                Agregar_Nota agregar_Nota = new Agregar_Nota();
                agregar_Nota.Show();
                agregar_Nota.BringToFront();
                agregar_Nota.Activate();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error al abrir el formulario: " + ex.Message);
            }
        }

        private void matriculaToolStripMenuItem_Click(object sender, EventArgs e)
        {
            try
            {
                this.Close();
                Consultar_Matricula consultar_Matricula = new Consultar_Matricula();
                consultar_Matricula.Show();
                consultar_Matricula.BringToFront();
                consultar_Matricula.Activate();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error al abrir el formulario: " + ex.Message);
            }
        }

        private void agregarNotasNoHechoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            try
            {
                this.Close();
                Agregar_Materia agregar_Materia = new Agregar_Materia();
                agregar_Materia.Show();
                agregar_Materia.BringToFront();
                agregar_Materia.Activate();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error al abrir el formulario: " + ex.Message);
            }
        }

        private void materiasToolStripMenuItem_Click(object sender, EventArgs e)
        {
            try
            {
                this.Close();
                Consultar_Materias consultar_Materias = new Consultar_Materias();
                consultar_Materias.Show();
                consultar_Materias.BringToFront();
                consultar_Materias.Activate();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error al abrir el formulario: " + ex.Message);
            }
        }

        private void agregarCursoNoHechoToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void asignarMateriaAProfesorNoHechoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            try
            {
                this.Close();
                Asignar_Curso_y_Materia asignar_Curso_Y_Materia = new Asignar_Curso_y_Materia();
                asignar_Curso_Y_Materia.Show();
                asignar_Curso_Y_Materia.BringToFront();
                asignar_Curso_Y_Materia.Activate();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error al abrir el formulario: " + ex.Message);
            }
        }

        private void agregarNuevoUsuaroAlLoginToolStripMenuItem_Click(object sender, EventArgs e)
        {
            try
            {
                this.Close();
                Agregar_Usuario_al_login agregar_Usuario_Al_Login = new Agregar_Usuario_al_login();
                agregar_Usuario_Al_Login.Show();
                agregar_Usuario_Al_Login.BringToFront();
                agregar_Usuario_Al_Login.Activate();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error al abrir el formulario: " + ex.Message);
            }
        }

        private void agregarNuevoUsuaroAlLoginNoHechoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            try
            {
                this.Close();
                Agregar_Usuario_al_login agregar_Usuario_Al_Login = new Agregar_Usuario_al_login();
                agregar_Usuario_Al_Login.Show();
                agregar_Usuario_Al_Login.BringToFront();
                agregar_Usuario_Al_Login.Activate();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error al abrir el formulario: " + ex.Message);
            }
        }
    }
}
