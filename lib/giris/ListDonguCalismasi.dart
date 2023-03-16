void main(){

  var meyveler = <String>[];
  meyveler.add("Çilek"); // 0
  meyveler.add("Muz");
  meyveler.add("Elma");
  meyveler.add("Kivi");
  meyveler.add("Kiraz");

  // 1.yöntem
  for(var m in meyveler){
    print("Sonuç : $m");
  }

  // index numarası ve verileri almak istediğimizde bu yöntemi kullanıyoruz
  for(var i=0;i<5;i++){  // index 0dan başlıyor bu yüzden i=0
    print("$i. meyve = ${meyveler[i]}");
  }

  // uzunluğu bilemeyebiliriz bu yüzden liste.length kaç veri olduğunu ile aldık
  for(var x=0;x<meyveler.length;x++){
    print("$x. meyve2 = ${meyveler[x]}");
  }
}