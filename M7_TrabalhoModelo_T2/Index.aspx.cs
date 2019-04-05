using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace M7_TrabalhoModelo_T2
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DetailsView1_DataBinding(object sender, EventArgs e)
        {
            //verificar se o login falhou
            if(DetailsView1.Rows.Count==0)
            {
                Label1.Text = "Erro. O login falhou.";
                return;
            }
            //iniciar sessão
            //nome
            Session["nome"] = DetailsView1.Rows[0].Cells[1].Text;
            //perfil
            Session["perfil"]= DetailsView1.Rows[1].Cells[1].Text;
            //nprocesso
            Session["nprocesso"]= DetailsView1.Rows[2].Cells[1].Text;
            //esconder a div login
            DivLogin.Visible = false;
        }
    }
}