void main(){
  var meyveler = <String>[];

  meyveler.add("Çilek");
  meyveler.add("Muz");
  meyveler.add("Elma");
  meyveler.add("Kivi");
  meyveler.add("Kiraz");

  print(meyveler.isEmpty); // listemiz boş mu diye kontrol ediyoruz false dönecek çünkü boş değil

  print(meyveler.length); // listenin boyut bilgisini veriyor

  print(meyveler.first);
  print(meyveler.last); // ilk ve son veri bilgisini veriyor

  print(meyveler.contains("Kiraz")); // belirtilen veri liste de varsa true yoksa false

  var liste = meyveler.reversed; // listeyi ters çeviriyor
  print(liste);

  // içeriği harf sırasına göre sıralama
  meyveler.sort();
  print(meyveler);  // Ç harfi türkçe olduğu için son sırada

  // belirtilen indexe göre veri silme
  meyveler.removeAt(2);
  print(meyveler);

  meyveler.remove("Elma");    // Silmek istediğimiz verinin bilgisini yazıyoruz
  print(meyveler);

  meyveler.clear(); // Listeyi tamamen silme
  print(meyveler);

}