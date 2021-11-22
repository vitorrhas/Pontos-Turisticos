using Domain.Entities;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;

namespace Repository
{
    public class LocalRepository
    {
        String conexao = "Server=DESKTOP-I3BF1J1\\SQLEXPRESS ; Database=turismo ; integrated security = true";


        public void CadastarLocal(Local local)
        {
            using (var con = new SqlConnection(conexao))
            {
                var cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandType = CommandType.Text;

                cmd.CommandText = @"INSERT INTO Cadastro(nome, uf, cidade, referencia, descr)
                                        VALUES(@Nome, @Uf, @Cidade, @Referencia, @Descricao)";

                cmd.Parameters.AddWithValue("Nome", local.nome);
                cmd.Parameters.AddWithValue("Uf", local.uf);
                cmd.Parameters.AddWithValue("Cidade", local.cidade);
                cmd.Parameters.AddWithValue("Referencia", local.referencia);
                cmd.Parameters.AddWithValue("Descricao", local.descr);

                try
                {
                    con.Open();
                    cmd.ExecuteNonQuery();
                }
                catch (System.Exception erro)
                {
                    throw erro;
                }
                finally
                {
                    con.Close();
                    con.Dispose();
                }
            }

        }

        public List<Local> ListarLocal(string nome)
        {
            using (var con = new SqlConnection(conexao))
            {
                var cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = @"SELECT nome, uf, cidade, referencia, descr 
                                    FROM dbo.Cadastro WITH(NOLOCK) 
                                    WHERE Nome Like '%'+ @Nome + '%'";

                cmd.Parameters.AddWithValue("nome", nome);

                SqlDataReader drd = null;
                con.Open();
                drd = cmd.ExecuteReader();

                List<Local> lista = new List<Local>();

                while (drd.Read())
                {
                    Local local = new Local();

                    local.nome = drd["nome"].ToString();
                    local.uf = drd["uf"].ToString();
                    local.cidade = drd["cidade"].ToString();
                    local.referencia = drd["referencia"].ToString();
                    local.descr = drd["descr"].ToString();
                    lista.Add(local);

                }

                con.Close();

                return lista;
            }

            return new List<Local>();
        }

    }
}
