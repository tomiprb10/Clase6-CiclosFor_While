using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace clase04
{
    public partial class ej1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnCalcular_Click(object sender, EventArgs e)
        {
            double num = Convert.ToDouble(TxtN.Text);
            LblResultado.Text = "";
            if (num > 0 && num <= 100)
            {
                for (int i = 1; i < 11; i++)
                {
                    double multi = num * i;
                    if (LblResultado.Text != "")
                    {
                        LblResultado.Text += $"{num} * {i} = {multi} <br>";
                    }
                    else {
                        LblResultado.Text += $"{num} * {i} = {multi} <br>";
                    }
                }
            }
            else
            {
                LblResultado.Text = "Porfavor ingrese un número entre 1 y 100";
            }

        }
    }
}