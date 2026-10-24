using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace clase04
{
    public partial class while4_for_aud : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnCalcular_Click(object sender, EventArgs e)
        {
            // 1. Validar correctamente el TryParse
            if (!int.TryParse(TxtAutos.Text, out int autos))
            {
                LblResultado.Text = "Por favor, ingrese un número válido de autos (ej. 3).";
                return;
            }

            // 2. Obtener placas removiendo entradas vacías accidentales
            string[] placas = TxtPlacas.Text.Split(new char[] { ',' }, StringSplitOptions.RemoveEmptyEntries);

            if (placas.Length != autos)
            {
                LblResultado.Text = "El número de placas no concuerda con el número de autos ingresados.";
                return;
            }

            int amarilla = 0;
            int rosa = 0;
            int roja = 0;
            int verde = 0;
            int azul = 0;

            for (int i = 0; i < placas.Length; i++)
            {
                string placa = placas[i].Trim();

                if (string.IsNullOrEmpty(placa)) continue;

                // Obtenemos el último carácter de la placa de forma eficiente
                char ultimoDigito = placa[placa.Length - 1];

                switch (ultimoDigito)
                {
                    case '1':
                    case '2':
                        amarilla++;
                        break;
                    case '3':
                    case '4':
                        rosa++;
                        break;
                    case '5':
                    case '6':
                        roja++;
                        break;
                    case '7':
                    case '8':
                        verde++;
                        break;
                    case '9':
                    case '0':
                        azul++;
                        break;
                }
            }

            LblResultado.Text =
                $"Número de autos con calcomanía amarilla: {amarilla}<br />" +
                $"Número de autos con calcomanía rosa: {rosa}<br />" +
                $"Número de autos con calcomanía roja: {roja}<br />" +
                $"Número de autos con calcomanía verde: {verde}<br />" +
                $"Número de autos con calcomanía azul: {azul}";
        }
    }
}