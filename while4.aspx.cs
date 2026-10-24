using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace clase04
{
    public partial class while4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnEjecutar_Click(object sender, EventArgs e)
        {
            if (!int.TryParse(TxtAutos.Text, out int autos))
            {
                LblResultado.Text = "Por favor, ingrese un número válido de autos.";
                return;
            }

            string[] placas = TxtPlacas.Text.Split(',');
            int amarilla = 0;
            int rosa = 0;
            int roja = 0;
            int verde = 0;
            int azul = 0;

            try
            {
                if (placas.Length != autos)
                {
                    LblResultado.Text = "El número de placas no concuerda con el número de autos ingresados.";
                    return;
                }

                int i = 0;
                while (i < placas.Length)
                {
                    string placa = placas[i].Trim();

                    if (placa.EndsWith("1") || placa.EndsWith("2"))
                    {
                        amarilla++;
                    }
                    else if (placa.EndsWith("3") || placa.EndsWith("4"))
                    {
                        rosa++;
                    }
                    else if (placa.EndsWith("5") || placa.EndsWith("6"))
                    {
                        roja++;
                    }
                    else if (placa.EndsWith("7") || placa.EndsWith("8"))
                    {
                        verde++;
                    }
                    else if (placa.EndsWith("9") || placa.EndsWith("0"))
                    {
                        azul++;
                    }

                    i++;
                }

                LblResultado.Text =
                    $"Número de autos con calcomanía amarilla: {amarilla}<br />" +
                    $"Número de autos con calcomanía rosa: {rosa}<br />" +
                    $"Número de autos con calcomanía roja: {roja}<br />" +
                    $"Número de autos con calcomanía verde: {verde}<br />" +
                    $"Número de autos con calcomanía azul: {azul}<br />";
            }
            catch (FormatException)
            {
                LblResultado.Text =
                    "Por favor, ingrese un formato de texto correcto. Ej: 2534, 4455, 2233";
            }
        }
    }
}