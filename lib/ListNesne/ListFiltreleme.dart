import 'package:collections_yapisi/ListNesne/Ogrenciler.dart';

void main(){
  var o1 = Ogrenciler(100, "Ahmet", "10F");
  var o2 = Ogrenciler(200, "Mehmet", "12A");
  var o3 = Ogrenciler(300, "Zeynep", "9C");

  var ogrenciler = <Ogrenciler>[];

  ogrenciler.add(o1);
  ogrenciler.add(o2);
  ogrenciler.add(o3);
/* ogrenci numaraya göre filtreledik
  Iterable<Ogrenciler> filtrele = ogrenciler.where((ogr){
    return ogr.no >= 200;
  });

  ogrenciler = filtrele.toList(); // filtrelediğimiz liste sonucu da liste
*/
  Iterable<Ogrenciler> filtrele = ogrenciler.where((ogr){
    return ogr.ad.contains("t");  // contains string ifadelerde karakter araması yapıyor
  });

  ogrenciler = filtrele.toList();

  for(var o in ogrenciler){
    print("****************");
    print("Öğrenci No : ${o.no}");
    print("Öğrenci Ad : ${o.ad}");
    print("Öğrenci Sınıf : ${o.sinif}");
  }

}