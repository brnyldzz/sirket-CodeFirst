# Şirket CodeFirst
Projede **C#** ve **SQL Server Management Studio 19** kullandım. 
İlk aşamada; Blank Solution açıp Windows Forms App (.NET Framework), Class Library (.NET Framework) ve ASP.NET Web Application (.NET Framework) kullanarak Sirket.Admin, Sirket.Core, **Sirket.Data**(startup project olarak ayarladım), Sirket.UI, Sirket.Win32 adlı projeleri oluşturdum. İkinci aşamada; Sirket.Data projesine DataContext ve Model adlı iki tane klasör ekledim. DataContext klasörünün içerisine SirketContext.cs adlı Class ve Model klasörünün içine oluşturmak istediğim tabloların adlarıyla Class oluşturdum. Üçüncü aşamada; Her tablo için prop oluşturarak
tabloların adını belirledim. SirketContext Class'ında tabloları birbirine bağladım. Tablo Class'larında Column adlarını ve veri türlerini belirledim. Dördüncü aşamada; Model klasörünün içindeki App.config'e SQL veritabanımın **connection string'ini** yapıştırdım. Beşinci aşamada; NuGet Packages'dan Entity Framework indirip Package Manager Console'a
sırasıyla, Enable-Migrations, Add-Migration olustur ve Update-Database yazıp C#'tan oluşturduğum tabloları SQL Server Management Studio 19'a ekledim.


<h2 align="left">Amaç</h2>
Veritabanı ile web sitesini bağlamanın iki yolu var:
Database First,
Code First.
Code First ile bağlamayı öğrenip bildiklerimi pekiştirmek.
