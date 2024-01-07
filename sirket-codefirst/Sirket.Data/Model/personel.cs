using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Sirket.Data.Model
{
    [Table("personel")]
    public class personel
    {
        [Key]
        public int personelID { get; set; }

        [Required]
        [DataType(DataType.Custom)]
        [MaxLength(50)]
        public string personelAdi { get; set; }

        [Required]
        [DataType(DataType.Custom)]
        [MaxLength(50)]
        public string personelSoyadi { get; set; }

        public unvan unvan { get; set; }

        public proje proje { get; set; }

        public uzmanlik uzmanlik { get; set; }

    }
}
