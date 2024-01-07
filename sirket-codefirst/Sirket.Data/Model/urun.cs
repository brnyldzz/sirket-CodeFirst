using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Sirket.Data.Model
{
    [Table("urun")]
    public class urun
    {
        [Key]
        public int urunID { get; set; }

        [Required]
        [DataType(DataType.Custom)]
        [MaxLength(50)]
        public string urunAdi { get; set; }

    }
}
