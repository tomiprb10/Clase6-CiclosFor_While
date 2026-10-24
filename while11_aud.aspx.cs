using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace clase04
{
    public partial class while11_aud : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnCalcular_Click(object sender, EventArgs e)
        {
            LblResultado.Text = "";

            // 1. Validar y capturar pesos anteriores usando while
            double[] anteriores = new double[5];
            TextBox[] txtAnteriores = { TxtAnterior1, TxtAnterior2, TxtAnterior3, TxtAnterior4, TxtAnterior5 };

            int k = 0;
            while (k < 5)
            {
                if (!double.TryParse(txtAnteriores[k].Text.Trim(), out anteriores[k]))
                {
                    LblResultado.Text = $"<span style='color:#d9534f; font-weight:bold;'>Error: El peso anterior de la persona {k + 1} no es válido.</span>";
                    return;
                }
                k++;
            }

            // 2. Capturar arreglos de textos de pesos
            string[][] personas = {
                TxtP1.Text.Split(','),
                TxtP2.Text.Split(','),
                TxtP3.Text.Split(','),
                TxtP4.Text.Split(','),
                TxtP5.Text.Split(',')
            };

            string resultado = "";
            int i = 0;

            // 3. Procesar cada persona usando ciclo while
            while (i < 5)
            {
                string[] basculasPersona = personas[i];
                double suma = 0;
                int countValidos = 0;
                int j = 0;

                while (j < basculasPersona.Length)
                {
                    string valorStr = basculasPersona[j].Trim();
                    if (!string.IsNullOrEmpty(valorStr))
                    {
                        if (double.TryParse(valorStr, out double peso))
                        {
                            suma += peso;
                            countValidos++;
                        }
                        else
                        {
                            LblResultado.Text = $"<span style='color:#d9534f; font-weight:bold;'>Error: Formato inválido en los pesos de la persona {i + 1}. Use números separados por comas.</span>";
                            return;
                        }
                    }
                    j++;
                }

                if (countValidos == 0)
                {
                    LblResultado.Text = $"<span style='color:#d9534f; font-weight:bold;'>Error: La persona {i + 1} no tiene pesos válidos registrados.</span>";
                    return;
                }

                double promedio = suma / countValidos;
                double diferencia = promedio - anteriores[i];

                if (diferencia > 0)
                {
                    resultado += $"<div style='margin-bottom: 5px;'><strong>Persona {i + 1}:</strong> SUBIÓ <span style='color:red;'>{diferencia:F2} kg</span> (Promedio: {promedio:F2} kg)</div>";
                }
                else if (diferencia < 0)
                {
                    resultado += $"<div style='margin-bottom: 5px;'><strong>Persona {i + 1}:</strong> BAJÓ <span style='color:green;'>{Math.Abs(diferencia):F2} kg</span> (Promedio: {promedio:F2} kg)</div>";
                }
                else
                {
                    resultado += $"<div style='margin-bottom: 5px;'><strong>Persona {i + 1}:</strong> Mantuvo su peso (Promedio: {promedio:F2} kg)</div>";
                }

                i++;
            }

            LblResultado.Text = $"<div style='background: #eef9ff; padding: 10px; border-left: 4px solid #0275d8;'>{resultado}</div>";
        }
    }
}