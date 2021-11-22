using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Domain.Entities
{
    public class Local
    {
        public int id { get; set; }

        public string nome { get; set; }

        public string uf { get; set; }

        public string cidade { get; set; }

        public string referencia { get; set; }

        public string descr { get; set; }
    }
}
