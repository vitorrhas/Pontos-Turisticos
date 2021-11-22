using Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Pontos_Turisticos.Pag.Locais
{
    public partial class Pesquisar : System.Web.UI.Page
    {
        LocalService localService = new LocalService();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnPesquisar_Click(object sender, EventArgs e)
        {

            if (txtNomeP.Text.ToString() == "")
            {
                String mensagem = "Por favor digite o nome do ponto turistico";
                ClientScript.RegisterClientScriptBlock(this.GetType(), "MensagemAlert", "alert('" + mensagem + "');", true);
            }
            else
            {
                var lista = localService.ListarLocal(txtNomeP.Text);
                Session["stcRetornoArquivos"] = lista;


                gvLocais.DataSource = lista;
                gvLocais.DataBind();
            }


        }

        protected void gvLocais_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvLocais.DataSource = Session["stcRetornoArquivos"];
            gvLocais.PageIndex = e.NewPageIndex;
            gvLocais.DataBind();
        }
    }
}