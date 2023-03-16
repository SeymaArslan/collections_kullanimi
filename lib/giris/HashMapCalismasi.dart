import 'dart:collection';

void main(){

  var iller = HashMap<int,String>(); // tanımlama
  iller[6] = "Ankara";  // kayıtlar
  iller[9] = "Aydın";
  iller[19] = "Corum";

  print(iller);

  iller[19] = "Yeni Corum";
  print(iller);

  print(iller[9]); // tekli veri çekme
  String veri = iller[6]!;  // 2.versiyonu
  print(veri);

  print(iller.length); // kaç kayıt olduğunu gösterir
  print(iller.isEmpty); // boşsa true doluysa false
  print(iller.containsKey(17)); // key varsa true yoksa false
  print(iller.containsValue("Ankara")); // value varsa true yoksa false

  var anahtarlar = iller.keys; // iller hashmapinde ki tüm key bilgisini sırayla verir, liste gibi diyebiliriz

  for(var a in anahtarlar){
    print("Sonuç: ${iller[a]}");
  }
  
  iller.remove(19);
  print(iller);

  iller.clear();
  print(iller);
}