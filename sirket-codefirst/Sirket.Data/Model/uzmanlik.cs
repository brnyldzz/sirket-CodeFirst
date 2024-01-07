using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Security.Policy;
using System.Text;
using System.Threading.Tasks;

namespace Sirket.Data.Model
{
    [Table("uzmanlik")]
    public class uzmanlik
    {
        [Key]
        public int uzmanlikID { get; set; }

        [Required]
        [DataType(DataType.Custom)]
        [MaxLength(50)]
        public string uzmanlikAdi   { get; set; }
    }
}
