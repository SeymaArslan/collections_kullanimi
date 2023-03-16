void main(){
  var sayilar = <int>[];
  sayilar.add(1);
  sayilar.add(23);
  sayilar.add(32);
  sayilar.add(47);
  sayilar.add(59);
  sayilar.add(100);
  sayilar.add(18);
  sayilar.add(54);

  var tek = <int>[];
  var cift = <int>[];

  for(var s in sayilar){
    int sonuc = s % 2;
    if(sonuc == 0){
      cift.add(s);
    }
    if(sonuc == 1){
      tek.add(s);
    }
  }

  for(var t in tek){
    print("tekler : $t");
  }
  for(var c in cift){
    print("çiftler : $c");
  }

}