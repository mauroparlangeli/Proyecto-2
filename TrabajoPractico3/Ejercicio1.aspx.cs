using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TrabajoPractico3
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            bool existe = false;

            foreach (ListItem item in ddlLocalidades.Items)
            {
                if (string.Compare(txtLocalidades.Text.Trim(), item.Text.Trim(), StringComparison.OrdinalIgnoreCase) == 0)
                {
                    existe = true;
                }
            }

            if (existe == false)
            {
                ddlLocalidades.Items.Add(txtLocalidades.Text);
                lblAddLocalidad.Text = "Localidad guardada correctamente";

            }
            else
            {
                lblAddLocalidad.Text = "Esta localidad ya existe";
            }

            txtLocalidades.Text = "";
        }

        protected void btnIraInicio_Click(object sender, EventArgs e)
        {
            Response.Redirect("Inicio.aspx");
        }

        protected void BtnGuardarUsuario_Click(object sender, EventArgs e)
        {
            lblBienvenido.Text = ("Bienvenido" + " " + txtUsuario.Text);
            lblAddLocalidad.Text = "";
        }
    }
}