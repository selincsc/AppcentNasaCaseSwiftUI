# AppcentNasaCaseSwiftUI

# Nasa Case ' de Neler Yaptım?

* Kullanacağım modellerimi ayrı ayrı "Model" dosyası altında ayrı ayrı oluşturdum.
* Verilerimi çekebilmek için generic type ile "Network" katmanımı oluşturdum.
* "HomePageViewModel altında TabBar olustururken yaptığım pageChoose değişkenine göre gelen veriyi çalıstırdım. Böylece Tabbarda seçilen her bir tab ile Curiousity, Opportunity, Spirit araçlarının resimlerini görebileceğimiz hale geldi.
* Gelen verilerin hangi kamealara ait olduğu bilinebilsin diye bir "Filtering" button koydum ve bunları her bi action için "FilterModel" isimli dosyamdan kameraya göre çekmesini sağladım.
* Gelen resimlere tıklandığında resme ait detayları gösterebilmek için bir pop up olusturdum ve burada araç adı, atıldığı tarih, aracın görev durumu, fırlatma tarighi ve iniş tarihi gibi bilgileri gösterdim.

# Yaparken..
* MVVM mimarisini takip ettim.
* Dependency injection kullandım.
* Kingfisher açık kaynak kodlu kütüphanesini kullandım.

