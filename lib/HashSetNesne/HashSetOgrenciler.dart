class Ogrenciler{
  int no;
  String ad;
  String sinif;

  Ogrenciler(this.no, this.ad, this.sinif);

  @override
  //int get hashCode => super.hashCode; // kriteri buraya yazacağız
  int get hashCode => this.no; // numaraya göre kayıt et diyoruz

 /*
  @override
  bool operator == (Object other){
    return super == other;
  }     */

  @override
  bool operator ==(Object other){ // bize otomatik olarak bir nesne verdi ve biz bu nesneye göre kıyaslama yapacağız
    if(no == (other as Ogrenciler).no){
      // yukarıda kıyaslama yap dediğimiz no == (other nesnesini Ogrenciler
      // sınıfına downcasting yaparak dönüştür, yani artık other bir class) daha sonra
      // oradaki otherın veya ogrenciler classının no suna eriş
      // yani HashSetNesneMain de add yapılan nolar ile eklenen no ları kıyaslayacak
      // ilk no mevcut olan no veya noları ikinci no ise yeni eklenen dışarıdan gelen no ları temsil ediyor
      return true;
    } else  {
      return false;
    }
  }

}