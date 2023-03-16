import 'dart:io';
import 'package:collections_yapisi/ListNesneOrn/AdresComposition.dart';
import 'package:collections_yapisi/ListNesneOrn/PersonelComposition.dart';

void main(){

  // öncelikle liste tanımlayalım; personel sınıfından nesneleri kayıt edeceğimiz alan oluşturmak
  var personeller = <Personel>[];

  for(var i=1;i<4;i++){

    print("$i. personelin adı:");
    String isim = stdin.readLineSync()!;
    print("$i. personelin bulunduğu ili");
    String il = stdin.readLineSync()!;
    print("$i. personelin bulunduğu ilçe");
    String ilce = stdin.readLineSync()!;

    //önce adres nesnesini oluşturulım ki personel classına nesnemizi gönderebilelim
    var adres = Adres(il, ilce);

    // oluşturduğumuz adres nesnesini personel nesnesinde kullanıyoruz
    var personel = Personel(i, isim, adres);
    personeller.add(personel); // personel nesnesini personeller listesine ekliyoruz.

  }

  for(var p in personeller){
    print("----------------------");
    print("Personel no: ${p.no}");
    print("Personel ad: ${p.isim}");
    print("Personel bulunduğu il: ${p.adres.il}");
    print("Personel bulunduğu ilçe: ${p.adres.ilce}");
  }


}