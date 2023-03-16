void main(){
  // var sayilar = List(); Kaldırıldı
  // var sonuclar = new List(); Kaldırıldı
  // var iller = List<String>(); Kaldırıldı
  var iller = <String>[];
  var plakalar = [6,19,9];

  var meyveler = <String>[];
  meyveler.add("Çilek"); //0
  meyveler.add("Elma"); //1
  meyveler.add("Kivi"); //2
  meyveler.add("Kiraz");  //3

  print(meyveler); // bu çağırım üzerinde çalışılacak bir şey değil
  meyveler.add("Muz");
  print(meyveler);

  // var olan bilgiyi güncelleme mesela elmanın yerine farklı bir değer
  meyveler[1] = "Karpuz";
  print(meyveler);

  // insertle index belirtip veri ekleyebiliriz
  meyveler.insert(3, "Portakal");
  print(meyveler);

  String str = meyveler[0];
  print(str);

  print(meyveler[2]);



}