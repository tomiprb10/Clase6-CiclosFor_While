using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace clase04
{
    public partial class while6_aud : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnCalcular_Click(object sender, EventArgs e)
        {
            // 1. Validación amigable y explícita del ingreso del usuario
            if (!float.TryParse(TxtDinero.Text, out float dineroInicial) || dineroInicial <= 0)
            {
                LblResultado.CssClass = "text-danger"; // Asumiendo Bootstrap o clases de estilo de error
                LblResultado.Text = "⚠️ Por favor, ingresa un valor numérico válido mayor a 0 (Ej: 1.000.000 o 1000000).";
                return;
            }

            double tasaInteres = 0.02; // 2% mensual
            float dinero = dineroInicial;
            int mes = 1;

            // Opcional avanzado (UX): Podríamos usar un bucle para acumular un historial 
            // y mostrarle al usuario un pequeño desglose si la interfaz lo permite.
            while (mes <= 12)
            {
                dinero += dinero * (float)tasaInteres;
                mes++;
            }

            // 2. Resultado claro, transparente y con formato localizado
            LblResultado.CssClass = "text-success";
            LblResultado.Text = $"✅ Partiendo de un capital inicial de **{dineroInicial.ToString("N2")} $**, " +
                                $"al cabo de 1 año (12 meses) con una tasa del 2% mensual, " +
                                $"tu total acumulado será de: **{dinero.ToString("N2")} $**.";
        }
    }
}