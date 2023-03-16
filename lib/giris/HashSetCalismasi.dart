import 'dart:collection';

void main(){

  var sayilar = HashSet<int>();

  var isimler = HashSet.from(["Sema", "Ece"]);

  var meyveler = HashSet<String>();
  meyveler.add("Çilek");
  meyveler.add("Muz");
  meyveler.add("Elma");
  meyveler.add("Kivi");
  print(meyveler);

  meyveler.add("Elma");
  print(meyveler); // tekrar kayıt yapmadı

  // verdiğimiz sırayla değil kendi yaptığı sıraya göre ilk elemana erişebiliriz

  print(meyveler.elementAt(2)); // indekse göre verileri görebiliyoruz
  String gelenSonuc = meyveler.elementAt(3); // bu şekilde de kullanabiliriz.
  print(gelenSonuc);

  print(meyveler.length); // içerisindeki eleman sayısını veriyor
  print(meyveler.isEmpty); // boşsa true doluysa false
  print(meyveler.contains("Muz")); // Muz bilgisi bu hashsette varsa true yoksa false


  // for döngüsüyle veri çekme
  for(var m in meyveler) { // 1.yöntem tüm içeriği alma
    print("Sonuç : $m");
  }

  for(var i=0;i<meyveler.length;i++){ // 2.yöntem indeksle beraber içeriği alma
    print("$i indeksli veri: ${meyveler.elementAt(i)}");
  }

  // Silme işlemleri
  meyveler.remove("Kivi"); // içeriğe göre silme işlemi
  print(meyveler);

  meyveler.clear(); // bütün içeriği silme
  print(meyveler);
}