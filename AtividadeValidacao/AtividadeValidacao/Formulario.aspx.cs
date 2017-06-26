using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AtividadeValidacao
{
    public partial class Formulario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCadastrar_Click(object sender, EventArgs e)
        {
            lblMsg.Text = "Cadastro realizado com sucesso!";
        }

        protected void txtCpf_TextChanged(object sender, EventArgs e)
        {
           
        }
    }
}