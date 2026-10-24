using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace clase04
{
    public partial class while6 : System.Web.UI.Page
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
                int mes = 1;

                while (mes <= 12)
                {
                    dinero += dinero * (float)tasaInteres;
                    mes++;
                }

                LblResultado.Text =
                    "Total al cabo de un año: " + dinero.ToString("N2") + "$";
            }
            catch (FormatException)
            {
                LblResultado.Text =
                    "El ingreso debe ser un valor numérico. Ej: 1000000";
            }
        }
    }
}
