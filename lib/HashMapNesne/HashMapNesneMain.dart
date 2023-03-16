import 'dart:collection';

import 'package:collections_yapisi/HashMapNesne/Kisiler.dart';

void main(){
  // tcNo yu key olarak kullancağız nesneyi de değer olarak kullanıp kayıt yapacağız

  var k1 = Kisiler(111, "Sema");
  var k2 = Kisiler(222, "Ece");
  var k3 = Kisiler(333, "Leyla");

  var kisilerListe = HashMap<int, Kisiler>();
  kisilerListe[k1.tcNo] = k1; // kisilerLİste[key] = değer olarak k1 de ki veri
  kisilerListe[k2.tcNo] = k2;
  kisilerListe[k3.tcNo] = k3;

  // kayıtları konsola yazma, öncelikle anahtarlara ihtiyacımız var
  var anahtarlar = kisilerListe.keys; // keys sayesinde listedeki tüm anahtarları alacağız

  for(var a in anahtarlar){
    // önce anahtarlar gelecek 111 222 333 yani
    var kisi = kisilerListe[a]; // a ile dinamik oldu.
    if(kisi != null){
      print("--------------");
      print("Kişi TCNO : ${kisi.tcNo}");
      print("Kisi AD : ${kisi.ad}");
    }

  }

}