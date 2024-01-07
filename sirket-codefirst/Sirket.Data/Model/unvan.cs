using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Sirket.Data.Model
{
    [Table("unvan")]
    public class unvan
    {
        [Key]
        public int unvanID { get; set; }

        [Required]
        [DataType(DataType.Custom)]
        [MaxLength(50)]
        public string unvanAdi { get; set; }

    }
}
