using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace clase04
{
    public partial class while1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Ocultamos los campos de ventas al cargar la página por primera vez
                FilaSueldo.Visible = false;
                FilaV1.Visible = false;
                FilaV2.Visible = false;
                FilaV3.Visible = false;
                FilaBotonCalcular.Visible = false;
            }
        }

        protected void BtnIniciar_Click(object sender, EventArgs e)
        {
            if (int.TryParse(TxtVendedores.Text, out int n) && n > 0)
            {
                // Guardamos el total de vendedores y empezamos en el vendedor 1 usando ViewState
                ViewState["TotalVendedores"] = n;
                ViewState["VendedorActual"] = 1;
                ViewState["AcumuladoResultados"] = "";

                // Bloqueamos la entrada de n y mostramos los campos para el primer vendedor
                TxtVendedores.Enabled = false;
                BtnIniciar.Enabled = false;

                FilaSueldo.Visible = true;
                FilaV1.Visible = true;
                FilaV2.Visible = true;
                FilaV3.Visible = true;
                FilaBotonCalcular.Visible = true;

                LblMensajePrincipal.Text = "Ingrese los datos para el Vendedor 1 de " + n + ":";
            }
            else
            {
                LblResultado.Text = "Por favor, ingrese un número válido mayor a 0.";
            }
        }

        protected void BtnCalcular_Click(object sender, EventArgs e)
        {
            int vendedorActual = (int)ViewState["VendedorActual"];
            int totalVendedores = (int)ViewState["TotalVendedores"];

            // Implementación del ciclo while solicitada para validar y procesar el paso actual
            int contadorValidacion = 0;
            while (contadorValidacion < 1)
            {
                if (decimal.TryParse(TxtSueldoBase.Text, out decimal sueldo) &&
                    decimal.TryParse(TxtVenta1.Text, out decimal v1) &&
                    decimal.TryParse(TxtVenta2.Text, out decimal v2) &&
                    decimal.TryParse(TxtVenta3.Text, out decimal v3))
                {
                    // Cálculo de comisiones (10% de las tres ventas) y sueldo total
                    decimal totalVentas = v1 + v2 + v3;
                    decimal comision = totalVentas * 0.10m;
                    decimal sueldoTotal = sueldo + comision;

                    // Acumulamos el resultado de este vendedor
                    string resultadosPrevios = ViewState["AcumuladoResultados"].ToString();
                    ViewState["AcumuladoResultados"] = resultadosPrevios +
                        $"<br/>Vendedor {vendedorActual}: Comisión = {comision:C}, Sueldo Total = {sueldoTotal:C}";

                    contadorValidacion++; // Salimos del while al completarse correctamente
                }
                else
                {
                    LblResultado.Text = "Verifique los datos ingresados, hay campos que no son números válidos.";
                    return;
                }
            }

            // Comprobamos si aún faltan más vendedores por procesar
            if (vendedorActual < totalVendedores)
            {
                vendedorActual++;
                ViewState["VendedorActual"] = vendedorActual;

                LblMensajePrincipal.Text = "Ingrese los datos para el Vendedor " + vendedorActual + " de " + totalVendedores + ":";
                LblResultado.Text = "";

                // Limpiamos los TextBox para el siguiente vendedor
                TxtSueldoBase.Text = "";
                TxtVenta1.Text = "";
                TxtVenta2.Text = "";
                TxtVenta3.Text = "";
            }
            else
            {
                // Si ya terminamos con todos los vendedores, ocultamos los inputs y mostramos el reporte final
                FilaSueldo.Visible = false;
                FilaV1.Visible = false;
                FilaV2.Visible = false;
                FilaV3.Visible = false;
                FilaBotonCalcular.Visible = false;

                LblMensajePrincipal.Text = "¡Proceso finalizado con éxito!";
                LblResultado.Text = "<h3>Reporte Final:</h3>" + ViewState["AcumuladoResultados"].ToString();
            }
        }
    }
}