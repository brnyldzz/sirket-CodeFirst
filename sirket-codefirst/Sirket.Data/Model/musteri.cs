using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Sirket.Data.Model
{
    [Table("musteri")]
    public class musteri
    {
        [Key]
        public int musteriID { get; set; }

        [Required]
        [DataType(DataType.Custom)]
        [MaxLength(50)]
        public string musteriAdi { get; set; }

        [Required]
        [DataType(DataType.Custom)]
        [MaxLength(50)]
        public string musteriSoyadi { get; set; }

        public  urun urun { get; set; }

    }
}
