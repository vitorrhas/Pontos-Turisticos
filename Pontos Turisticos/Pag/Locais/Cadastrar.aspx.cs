using Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Pontos_Turisticos.Pag.Locais
{
    public partial class Cadastrar : System.Web.UI.Page
    {
        LocalService localService = new LocalService();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void zeraCampos()
        {
            txtNomeP.Text =
            dropUf.SelectedValue =
            txtCid.Text =
            txtRefe.Text =
            txtDescr.Text = string.Empty;

        }

        protected void btnCadastrar_Click(object sender, EventArgs e)
        {
            Domain.Entities.Local local = new Domain.Entities.Local();

            local.nome = txtNomeP.Text;
            local.uf = dropUf.SelectedValue;
            local.cidade = txtCid.Text;
            local.referencia = txtRefe.Text;
            local.descr = txtDescr.Text;

            localService.CadastrarLocal(local);

            zeraCampos();

            String mensagem = "Ponto turístico cadastrado com sucesso!!";
            ClientScript.RegisterClientScriptBlock(this.GetType(), "MensagemAlert", "alert('" + mensagem + "');", true);

        }

    }
}