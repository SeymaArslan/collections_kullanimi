
import 'dart:collection';

import 'package:collections_yapisi/HashSetNesne/HashSetOgrenciler.dart';

void main(){
  var o1 = Ogrenciler(100, "Sema", "10F");
  var o2 = Ogrenciler(200, "Ece", "12A");
  var o3 = Ogrenciler(300, "Leyla", "9C");

  // ----- aynı veri kaydı olmuyor örneği
  var o4 = Ogrenciler(300, "Şeyma", "11A");

  var ogrenciler = HashSet<Ogrenciler>(); // <> arasına veri türü yazıyoruz
  // burada class yazmamızın sebebi yapacağımız kayıt işleminin veri değil nesne olması

  ogrenciler.add(o1);
  ogrenciler.add(o2);
  ogrenciler.add(o3);

  // ----- aynı veri kaydı olmuyor örneği
  ogrenciler.add(o4);
  // numaralar aynı olduğu halde kayıt işlemi gerçekleşti ki aslında kayıt olmamalıydı
  // sebebi nesne olarak kayıt yapılması ve hangi parametreye göre kayıt edeceğini bilememesi
  // işte bu yüzden hangi parametreye göre kayıt yapacağını belirtmemiz gerekiyor
  // ve bunu nesneyi oluşturduğumuz sınıfta gerçekleştireceğiz


  for(var o in ogrenciler){
    print("-------------------");
    print(o.no);
    print(o.ad);
    print(o.sinif);
  }


}