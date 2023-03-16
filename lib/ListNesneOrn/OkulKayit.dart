import 'dart:io';

import 'package:collections_yapisi/ListNesne/Ogrenciler.dart';

void main(){

  // sayac gerekli okul numaraları otomatik verilecek, döngü dışında yapmak daha mantıklı
  // bir tane de liste gerekli
  int sayac = 1;
  var ogr = <Ogrenciler>[];

  while(true){// sonsuz döngü
    print("Öğrenci Adı Giriniz : ");
    String ad = stdin.readLineSync()!;
    print("Öğrenci Sınıf : ");
    String sinif = stdin.readLineSync()!;

    var yOgr = Ogrenciler(sayac, ad, sinif); // yeni bir nesne oluşturduk sonrasında listeye aktarabiliriz
    sayac = sayac + 1;

    ogr.add(yOgr); // yeni öğrenciyi ogr listesine ekledik, ogr listesi Ogrenciler classını kullandı

    // döngü işlemleri
    print("Çıkmak için (1) - Devam etmek için diğer sayılar");
    int cikis = int.parse(stdin.readLineSync()!);

    // döngü çıkışı
    if(cikis == 1){
      // çıkış yaptığımızda kayıt edilen öğrencileri yazdıralım
      for(var ogrenci in ogr){
        print("*****************");
        print("Öğrenci No : ${ogrenci.no}");
        print("Öğrenci Ad : ${ogrenci.ad}");
        print("Öğrenci Sinif : ${ogrenci.sinif}");
      }

      print("----- Çıkış yapıldı -----");
      break;
    }
  }

}