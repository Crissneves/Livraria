using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.IO;
using System.Linq;
using System.Web;

namespace Livraria.Objects
{
    public class Livro: DbContext
    {
        public long IBSN { get; set; }
        public Autor Autor { get; set; }
        public string Nome {get; set;}
        public decimal Preco { get; set; }
        public DateTime DataPublicacao { get; set; }
        public Stream ImagemCapa { get; set; }

    }
}