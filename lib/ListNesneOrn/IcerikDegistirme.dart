void main(){

  var sayilar = <int>[];
   sayilar.add(1);
   sayilar.add(2);
   sayilar.add(3);
   sayilar.add(4);
   sayilar.add(5);
   // liste elemanlarını *2 işlemine sokup tekrar listeeye aktaracağız
  //yani içeriği değiştireceğiz

  for(var i=0;i<sayilar.length;i++){
    int sonuc = sayilar[i] * 2; // aldığımız her i yi 2 ile çarpıp
    sayilar[i] = sonuc; // burada i. elemana atarsak doğal olarak işlem tamamlanır.
  }

  for(var a in sayilar){
    print("sayilar : $a");
  }

}