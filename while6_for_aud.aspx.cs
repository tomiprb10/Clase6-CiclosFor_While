using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace clase04
{
    public partial class while6_for_aud : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnCalcular_Click(object sender, EventArgs e)
        {
            // 1. Validamos de forma segura y explícita el ingreso del usuario con TryParse
            if (!float.TryParse(TxtDinero.Text, out float dinero) || dinero <= 0)
            {
                LblResultado.CssClass = "text-danger"; // Estilo visual de error
                LblResultado.Text = "⚠️ Por favor, ingresa un valor numérico válido mayor a 0. Ej: 1000000";
                return; // Cortamos la ejecución aquí si hay error
            }

            double tasaInteres = 0.02;

            // 2. El ciclo for limpio y directo para los 12 meses del año
            for (int mes = 1; mes <= 12; mes++)
            {
                dinero += dinero * (float)tasaInteres;
            }

            // 3. Resultado claro para el usuario
            LblResultado.CssClass = "text-success"; // Estilo visual de éxito
            LblResultado.Text = "Total de dinero al cabo de un año: " + dinero.ToString("N2") + "$";
        }
    }
}