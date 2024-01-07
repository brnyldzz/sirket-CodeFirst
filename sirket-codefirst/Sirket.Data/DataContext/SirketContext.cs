using Sirket.Data.Model;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Sirket.Data.SirketContext
{
    public class SirketContext:DbContext
    {
        public DbSet<musteri> musteri { get; set; }

        public DbSet<personel> personel { get; set; }

        public DbSet<proje> proje { get; set; }

        public DbSet<unvan> unvan { get; set; }

        public DbSet<urun> urun { get; set; }

        public DbSet<uzmanlik> uzmanlik { get; set; }

    }
}
