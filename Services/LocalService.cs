using Domain.Entities;
using Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Services
{
    public class LocalService
    {
        LocalRepository repository = new LocalRepository();

        public void CadastrarLocal(Local local)
        {
            repository.CadastarLocal(local);
        }

        public List<Local> ListarLocal(string nome)
        {
            return repository.ListarLocal(nome);
        }
    }
}
