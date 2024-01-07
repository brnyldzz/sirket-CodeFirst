namespace Sirket.Data.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class olustur : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.musteri",
                c => new
                    {
                        musteriID = c.Int(nullable: false, identity: true),
                        musteriAdi = c.String(nullable: false, maxLength: 50),
                        musteriSoyadi = c.String(nullable: false, maxLength: 50),
                        urun_urunID = c.Int(),
                    })
                .PrimaryKey(t => t.musteriID)
                .ForeignKey("dbo.urun", t => t.urun_urunID)
                .Index(t => t.urun_urunID);
            
            CreateTable(
                "dbo.urun",
                c => new
                    {
                        urunID = c.Int(nullable: false, identity: true),
                        urunAdi = c.String(nullable: false, maxLength: 50),
                    })
                .PrimaryKey(t => t.urunID);
            
            CreateTable(
                "dbo.personel",
                c => new
                    {
                        personelID = c.Int(nullable: false, identity: true),
                        personelAdi = c.String(nullable: false, maxLength: 50),
                        personelSoyadi = c.String(nullable: false, maxLength: 50),
                        proje_projeID = c.Int(),
                        unvan_unvanID = c.Int(),
                        uzmanlik_uzmanlikID = c.Int(),
                    })
                .PrimaryKey(t => t.personelID)
                .ForeignKey("dbo.proje", t => t.proje_projeID)
                .ForeignKey("dbo.unvan", t => t.unvan_unvanID)
                .ForeignKey("dbo.uzmanlik", t => t.uzmanlik_uzmanlikID)
                .Index(t => t.proje_projeID)
                .Index(t => t.unvan_unvanID)
                .Index(t => t.uzmanlik_uzmanlikID);
            
            CreateTable(
                "dbo.proje",
                c => new
                    {
                        projeID = c.Int(nullable: false, identity: true),
                        projeAdi = c.String(nullable: false, maxLength: 50),
                        urun_urunID = c.Int(),
                    })
                .PrimaryKey(t => t.projeID)
                .ForeignKey("dbo.urun", t => t.urun_urunID)
                .Index(t => t.urun_urunID);
            
            CreateTable(
                "dbo.unvan",
                c => new
                    {
                        unvanID = c.Int(nullable: false, identity: true),
                        unvanAdi = c.String(nullable: false, maxLength: 50),
                    })
                .PrimaryKey(t => t.unvanID);
            
            CreateTable(
                "dbo.uzmanlik",
                c => new
                    {
                        uzmanlikID = c.Int(nullable: false, identity: true),
                        uzmanlikAdi = c.String(nullable: false, maxLength: 50),
                    })
                .PrimaryKey(t => t.uzmanlikID);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.personel", "uzmanlik_uzmanlikID", "dbo.uzmanlik");
            DropForeignKey("dbo.personel", "unvan_unvanID", "dbo.unvan");
            DropForeignKey("dbo.personel", "proje_projeID", "dbo.proje");
            DropForeignKey("dbo.proje", "urun_urunID", "dbo.urun");
            DropForeignKey("dbo.musteri", "urun_urunID", "dbo.urun");
            DropIndex("dbo.proje", new[] { "urun_urunID" });
            DropIndex("dbo.personel", new[] { "uzmanlik_uzmanlikID" });
            DropIndex("dbo.personel", new[] { "unvan_unvanID" });
            DropIndex("dbo.personel", new[] { "proje_projeID" });
            DropIndex("dbo.musteri", new[] { "urun_urunID" });
            DropTable("dbo.uzmanlik");
            DropTable("dbo.unvan");
            DropTable("dbo.proje");
            DropTable("dbo.personel");
            DropTable("dbo.urun");
            DropTable("dbo.musteri");
        }
    }
}
