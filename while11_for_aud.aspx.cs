using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace clase04
{
    public partial class while11_for_aud : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnCalcular_Click(object sender, EventArgs e)
        {
            // Limpiar resultados previos
            LblResultado.Text = "";

            // 1. Validación de pesos anteriores usando ciclo for
            double[] anteriores = new double[5];
            TextBox[] txtAnteriores = { TxtAnterior1, TxtAnterior2, TxtAnterior3, TxtAnterior4, TxtAnterior5 };

            for (int k = 0; k < txtAnteriores.Length; k++)
            {
                string valorStr = txtAnteriores[k].Text.Trim();
                if (string.IsNullOrEmpty(valorStr) || !double.TryParse(valorStr, out anteriores[k]))
                {
                    MostrarError($"El peso anterior de la Persona {k + 1} es inválido o está vacío.");
                    return;
                }
            }

            // 2. Mapeo de arreglos de entrada
            string[][] personas = {
                TxtP1.Text.Split(','),
                TxtP2.Text.Split(','),
                TxtP3.Text.Split(','),
                TxtP4.Text.Split(','),
                TxtP5.Text.Split(',')
            };

            string htmlResultados = "";

            // 3. Procesamiento central con ciclos for anidados
            for (int i = 0; i < personas.Length; i++)
            {
                string[] basculasPersona = personas[i];
                double sumaPesos = 0;
                int contadorValidos = 0;

                for (int j = 0; j < basculasPersona.Length; j++)
                {
                    string pesoTrimmed = basculasPersona[j].Trim();
                    if (!string.IsNullOrEmpty(pesoTrimmed))
                    {
                        if (double.TryParse(pesoTrimmed, out double pesoParsed))
                        {
                            sumaPesos += pesoParsed;
                            contadorValidos++;
                        }
                        else
                        {
                            MostrarError($"Formato numérico incorrecto en los registros de la Persona {i + 1}. Use solo números separados por comas.");
                            return;
                        }
                    }
                }

                if (contadorValidos == 0)
                {
                    MostrarError($"La Persona {i + 1} no registra ningún peso válido.");
                    return;
                }

                double promedio = sumaPesos / contadorValidos;
                double diferencia = promedio - anteriores[i];

                // Generación de tarjetas de estado con diseño adaptativo
                if (diferencia > 0)
                {
                    htmlResultados += $"<div class='result-card warning'><strong>Persona {i + 1}:</strong> SUBIÓ <span class='badge up'>+{diferencia:F2} kg</span> <span class='sub-info'>(Promedio actual: {promedio:F2} kg)</span></div>";
                }
                else if (diferencia < 0)
                {
                    htmlResultados += $"<div class='result-card success'><strong>Persona {i + 1}:</strong> BAJÓ <span class='badge down'>{diferencia:F2} kg</span> <span class='sub-info'>(Promedio actual: {promedio:F2} kg)</span></div>";
                }
                else
                {
                    htmlResultados += $"<div class='result-card neutral'><strong>Persona {i + 1}:</strong> Mantuvo su peso <span class='sub-info'>(Promedio actual: {promedio:F2} kg)</span></div>";
                }
            }

            LblResultado.Text = htmlResultados;
        }

        private void MostrarError(string mensaje)
        {
            LblResultado.Text = $"<div class='result-card error'><strong>Error de validación:</strong> {mensaje}</div>";
        }
    }
}