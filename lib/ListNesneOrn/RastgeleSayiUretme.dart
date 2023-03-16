import 'dart:math';

void main(){

  var sayilar = <int>[];
  // 100 rastgele sayı üreteceğiz, bu yüzden döngü 100 kez çalışacak ki 100 adet sayımız olsun :)
  var r = Random();
  for(var i=0;i<100;i++){
    int rsayi = r.nextInt(51); // 50 yazarsak 0-49 arası sayı üretir
    // biz 0-50 arası üretilsin istiyoruz
    sayilar.add(rsayi);
  }

  sayilar.sort(); // sıralanmış görmek istediğimiz için sort kullandık
  for(var s in sayilar){
    print(s);
  }

}