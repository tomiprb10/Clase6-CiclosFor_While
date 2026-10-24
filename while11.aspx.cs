using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace clase04
{
    public partial class while11 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnCalcular_Click(object sender, EventArgs e)
        {
            double.TryParse(TxtAnterior1.Text, out double pAnterior1);
            double.TryParse(TxtAnterior2.Text, out double pAnterior2);
            double.TryParse(TxtAnterior3.Text, out double pAnterior3);
            double.TryParse(TxtAnterior4.Text, out double pAnterior4);
            double.TryParse(TxtAnterior5.Text, out double pAnterior5);

            string[] p1 = TxtP1.Text.Split(',');
            string[] p2 = TxtP2.Text.Split(',');
            string[] p3 = TxtP3.Text.Split(',');
            string[] p4 = TxtP4.Text.Split(',');
            string[] p5 = TxtP5.Text.Split(',');

            double[] anteriores = { pAnterior1, pAnterior2, pAnterior3, pAnterior4, pAnterior5 };
            string[][] personas = { p1, p2, p3, p4, p5 };

            string resultado = "";
            int i = 0;

            while (i < 5)
            {
                double suma = 0;
                int j = 0;
                string[] basculasPersona = personas[i];

                while (j < basculasPersona.Length)
                {
                    if (double.TryParse(basculasPersona[j].Trim(), out double peso))
                    {
                        suma += peso;
                    }
                    j++;
                }

                double promedio = suma / basculasPersona.Length;
                double diferencia = promedio - anteriores[i];

                if (diferencia > 0)
                {
                    resultado += $"Persona {i + 1}: SUBIO {diferencia:F2} kg.<br />";
                }
                else if (diferencia < 0)
                {
                    resultado += $"Persona {i + 1}: BAJO {Math.Abs(diferencia):F2} kg.<br />";
                }
                else
                {
                    resultado += $"Persona {i + 1}: Mantuvo su peso.<br />";
                }

                i++;
            }

            LblResultado.Text = resultado;
        }
    }
}