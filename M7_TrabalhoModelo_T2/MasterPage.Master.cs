using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace M7_TrabalhoModelo_T2
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //verificar se o cookie existe
            HttpCookie cookie = Request.Cookies["M7_T2"];
            if (cookie != null)
                divAviso.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //esconder a div
            divAviso.Visible = false;
            //criar o cookie
            HttpCookie cookie = new HttpCookie("M7_T2");
            cookie.Expires = DateTime.Now.AddYears(1);
            Response.Cookies.Add(cookie);
        }
    }
}