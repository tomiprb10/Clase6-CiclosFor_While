using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace clase04
{
    public partial class while6_for : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnCalcular_Click(object sender, EventArgs e)
        {
            float.TryParse(TxtDinero.Text, out float dinero);
            double tasaInteres = 0.02;

            try
            {
                for (int mes = 1; mes <= 12; mes++)
                {
                    dinero += dinero * (float)tasaInteres;
                }
                LblResultado.Text =
                    "Total de dinero al cabo de un año: " + dinero.ToString("N2") + "$";
            }
            catch (FormatException)
            {
                LblResultado.Text =
                    "El ingreso debe ser un valor numérico. Ej: 1000000";
            }
        }
    }
}