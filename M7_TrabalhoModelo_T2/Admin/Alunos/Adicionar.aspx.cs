using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace M7_TrabalhoModelo_T2.Admin.Alunos
{
    public partial class Adicionar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            //if (args.Value.Contains("-") == true)
            //    args.IsValid = true;
            //else
            //    args.IsValid = false;
            //testar posição do -
            if (args.Value.IndexOf('-') == 4)
                args.IsValid = true;
            else
            {
                args.IsValid = false;
                return;
            }
            //testar de antes e depois tenho valores numéricos
            int n1 = 0, n2 = 0;
            string[] partesdocp = args.Value.Split('-');
            if(int.TryParse(partesdocp[0],out n1) == false)
            {
                args.IsValid = false;
                return;
            }
            if (int.TryParse(partesdocp[1], out n2) == false)
            {
                args.IsValid = false;
                return;
            }
        }
    }
}