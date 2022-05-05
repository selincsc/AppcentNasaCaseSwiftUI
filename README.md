# AppcentNasaCaseSwiftUI

# Nasa Case ' de Neler Yaptım?
<img src="https://user-images.githubusercontent.com/58820720/166944999-137c7d7d-7b94-4dc1-9d49-c9c1b01c2d31.png" style="height:540px; width:320px;"/>   <img src="https://user-images.githubusercontent.com/58820720/166947393-03186575-829b-4f95-93ab-5dc1411ba10e.png" style="height:540px; width:320px;"/>
<img src="https://user-images.githubusercontent.com/58820720/166947405-3c1ad2ec-a149-4f47-ac7a-49d395f915a5.png" style="height:540px; width:320px;"/> 

* Kullanacağım modellerimi ayrı ayrı "Model" dosyası altında ayrı ayrı oluşturdum.
* Verilerimi çekebilmek için Generic Type ile "Network" katmanımı oluşturdum.
* "HomePageViewModel altında TabBar olustururken yaptığım pageChoose değişkenine göre gelen veriyi çalıstırdım. Böylece Tabbarda seçilen her bir tab ile Curiousity, Opportunity, Spirit araçlarının resimlerini görebileceğimiz hale geldi.
* Gelen verilerin hangi kamealara ait olduğu bilinebilsin diye bir "Filtering" button koydum ve bunları her bi action için "FilterModel" isimli structtan kameraya göre çekmesini sağladım.
* Gelen resimlere tıklandığında resme ait detayları gösterebilmek için bir pop up olusturdum ve burada araç adı, atıldığı tarih, aracın görev durumu, fırlatma tarihi ve iniş tarihi gibi bilgileri gösterdim.

<img src="https://user-images.githubusercontent.com/58820720/166948566-2fdba31e-a1b4-416a-b7c4-d27d96641550.gif" style="height:540px; width:320px;"/>  <img src="https://user-images.githubusercontent.com/58820720/166951229-0c236660-b043-4d52-85a2-e0e0526c4b1a.png" style="height:540px; width:320px;"/> 

# Yaparken..
* MVVM mimarisini takip ettim.
* Dependency injection kullandım.
* Kingfisher açık kaynak kodlu kütüphanesini kullandım.
* Pagination ile sayfalama yaptım. 








