using Livraria.Objects;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.IO;
using System.Linq;
using System.Web;

namespace Livraria.Models
{
    public class LivroViewModel
    {
        public long IBSN { get; set; }
        public Autor Autor { get; set; }
        public string Nome { get; set; }

        [Display(Name = "Preço")]
        public decimal Preco { get; set; }

        [Required]
        
        [Display(Name = "Data da Publicação")]
        public DateTime DataPublicacao { get; set; }
        
        [Display(Name = "Imagem da Capa")]
        public Stream ImagemCapa { get; set; }
    }
}