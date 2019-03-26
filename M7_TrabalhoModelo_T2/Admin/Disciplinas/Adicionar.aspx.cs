using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace M7_TrabalhoModelo_T2.Admin.Disciplinas
{
    public partial class Adicionar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            //verificar se tem pelo menos 2 letras
            if (args.Value.Length < 2)
            {
                args.IsValid = false;
                return;
            }
            //verificar se tem mais do que 40
            if (args.Value.Length > 40)
            {
                args.IsValid = false;
                return;
            }
            args.IsValid = true;
        }
    }
}