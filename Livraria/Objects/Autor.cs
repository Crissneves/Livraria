using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;

namespace Livraria.Objects
{
    public class Autor: DbContext
    {
        public int Id { get; set; }

        public string Nome { get; set; }
    }
}
