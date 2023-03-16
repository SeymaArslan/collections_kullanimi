import 'dart:io';

void main(){

  var isimler = <String>[];
  isimler.add("Sema");
  isimler.add("Leyla");
  isimler.add("Şeyma");
  isimler.add("Ece");
  isimler.add("Kamil");

  print("Aratmak için isim giriniz : ");
  String isim = stdin.readLineSync()!;

  for(var i in isimler){
    if(i == isim){
      print("Merhaba ${isim}");
      break;
    } else{
      print("Listede ${isim} ismi yok");
      break;
    }
  }

}