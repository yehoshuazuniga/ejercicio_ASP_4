using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ejercicio_ASP_4
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //  int valorFormulario2 = Convert.ToInt32(Request.QueryString["valor"]);
            string valor = Request.Form["Nombre"].ToString();
            //txtUsuario.Text = valor;
        }

        protected void boton1_click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                txtConfirm.Text = "";
                txtEdad.Text = "";
                txtPass.Text = "";
                txtUsuario.Text = "";
            }
        }


    }
}