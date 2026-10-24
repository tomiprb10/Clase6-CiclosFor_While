using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace clase04
{
    public partial class while3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnEjecutar_Click(object sender, EventArgs e)
        {
            try
            {
                int i = 0;
                string g = "";
                int h = 0;
                int m = 0;

                // Intentamos leer la cantidad de personas ingresadas
                if (!int.TryParse(TxtAlumnos.Text, out int alumnos) || alumnos <= 0)
                {
                    LblResultado.Text = "Por favor, indica un número válido y mayor a cero en la cantidad de personas.";
                    return;
                }

                // Separamos los géneros ingresados por comas
                string[] genero = TxtGenero.Text.Split(',');

                if (genero.Length != alumnos)
                {
                    LblResultado.Text = $"Indicaste que hay {alumnos} personas, pero escribiste {genero.Length} géneros. Revisa que estén separados correctamente por comas.";
                    return;
                }

                while (i < alumnos)
                {
                    g = genero[i].Trim().ToLower();

                    if (g == "hombre")
                    {
                        h++;
                    }
                    else if (g == "mujer")
                    {
                        m++;
                    }
                    else
                    {
                        LblResultado.Text = $"El texto '{genero[i].Trim()}' no es válido. Por favor escribe únicamente 'hombre' o 'mujer'.";
                        return; // Cortamos el flujo si hay un error para no dar resultados parciales erróneos
                    }
                    i++;
                }

                // Resultado claro y ordenado
                LblResultado.Text =
                    $"<strong>¡Listo! Este es el resumen:</strong><br />" +
                    $"• Total de hombres: {h} <br />" +
                    $"• Total de mujeres: {m}";
            }
            catch (FormatException)
            {
                LblResultado.Text = "Ups, parece que ingresaste un número o texto con un formato incorrecto. Por favor, revísalo.";
            }
            catch (OverflowException)
            {
                LblResultado.Text = "Los datos ingresados son demasiado grandes para ser procesados. Intenta con cantidades más pequeñas.";
            }
        }
    }
}