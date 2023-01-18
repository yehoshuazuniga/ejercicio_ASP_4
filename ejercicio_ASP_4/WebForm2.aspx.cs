using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ejercicio_ASP_4
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void  nbtnNavegar_click (object sender, EventArgs e)
        {
            //Response.Redirect("WebForm1.aspx?valor=23"); // GET
            Server.Transfer("WebForm1.aspx");

        }
    }
}