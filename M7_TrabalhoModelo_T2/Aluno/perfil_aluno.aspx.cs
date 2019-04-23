using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace M7_TrabalhoModelo_T2.Aluno
{
    public partial class perfil_aluno : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //iniciou sessão?
            if (Session["perfil"] == null)
                Response.Redirect("~/index.aspx");
            //é aluno?
            if (Session["perfil"].Equals("1") == false)
                Response.Redirect("~/index.aspx");
        }
    }
}