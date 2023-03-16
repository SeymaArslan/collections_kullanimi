import 'dart:io';

import 'package:collections_yapisi/ListNesneOrn/DersNotlar.dart';

void main(){
  // classtan nesne oluşturacağız ve listeye kaydedeceğiz
  // listemiz aşağıda
  var notListesi = <DersNotlar>[];


  while(true){
    // dersleri ve notları alıyoruz
    print("Dersin adını Girin: ");
    String ders = stdin.readLineSync()!;
    print("Dersin Notu :");
    int not = int.parse(stdin.readLineSync()!);

    // DersNotlar sınıfından nesne oluşturuyoruz
    var yeniNot =DersNotlar(ders, not);

    //döngü dışında oluşturduğumuz notlistesi listesine nesneyi ekliyoruz
    notListesi.add(yeniNot);

    // çıkış işlemi
    print("Çıkmak için (1) - Devam etmek için diğer sayılar..");
    int cikis = int.parse(stdin.readLineSync()!);

    if(cikis == 1){
      // önce karne düzeni, sonra ortalama ve geçtiniz kaldınız
      // dersleri ve notları göreceğimiz yer
      print("**************");

      int toplam = 0; //Ortalama için

      for(var dn in notListesi){
        // dn sırayla notListesine kaydettiğimiz her yeniNot nesnesini alacak
        print("${dn.ders} : ${dn.not}");
        toplam = toplam + dn.not; // Ortalama için
      }

      double ortalama = toplam/notListesi.length;
      print("*****------*****");
      print("Ortalamanız : ${ortalama}");

      print("*******--------*******");
      if(ortalama >= 50){
        print("GEÇTİNİZ");
      } else{
        print("KALDINIZ");
      }

      print("----- Çıkış yapıldı -----");
      break;
    }
  }

}