using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Sirket.Data.Model
{
    [Table("proje")]
    public class proje
    {
        [Key]
        public int projeID { get; set; }

        [Required]
        [DataType(DataType.Custom)]
        [MaxLength(50)]
        public string projeAdi { get; set; }

        public urun urun { get; set; }
    }
}
