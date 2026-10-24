using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace clase04
{
    public partial class while4_aud : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnEjecutar_Click(object sender, EventArgs e)
        {
            // 1. Validar cantidad de autos
            if (!int.TryParse(TxtAutos.Text, out int autos) || autos <= 0)
            {
                LblResultado.Text = "Por favor, ingrese un número válido de autos mayor a cero.";
                return;
            }

            // 2. Dividir y limpiar placas (ignorando entradas vacías accidentales)
            string[] placas = TxtPlacas.Text.Split(new char[] { ',' }, StringSplitOptions.RemoveEmptyEntries);

            if (placas.Length != autos)
            {
                LblResultado.Text = "El número de placas ingresadas no concuerda con el número de autos especificado.";
                return;
            }

            int amarilla = 0;
            int rosa = 0;
            int roja = 0;
            int verde = 0;
            int azul = 0;

            int i = 0;
            while (i < placas.Length)
            {
                string placa = placas[i].Trim();

                if (placa.Length > 0)
                {
                    char ultimoDigito = placa[placa.Length - 1];

                    // Usando switch para mayor limpieza y legibilidad
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
                        default:
                            // Opcional: Podrías contar placas con formato inválido si lo deseas
                            break;
                    }
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
    }
}