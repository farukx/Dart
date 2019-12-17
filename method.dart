//Method Oluşturma ve Constructer - Yapıcı Method
class Kapi {
  String uretim;
  num genislik;

  kapiAc(){
    print("Kapı açıldı.");
  }
   kapiKapa(){
    print("Kapı kapandı.");
  }
}
class Pencere {
  String malzeme;
  num  boyut;

  //yapıcı method constructor
  Pencere(String oMalzeme, num oboyut){
    this.malzeme = oMalzeme;
    this.boyut = oboyut;
    print("pencere nesnesi oluştu");
  }
}

main() {
kapiNesnesi();

Pencere mutfakPenceresi = new Pencere("PVC", 100);
Pencere banyoPenceresi = new Pencere("Tahta", 100);

print(banyoPenceresi.malzeme);
print(mutfakPenceresi.malzeme);
}

void kapiNesnesi(){
    Kapi girisKapisi = new Kapi();
  girisKapisi.genislik = 100;
  //print(girisKapisi.genislik);
  girisKapisi.uretim = "2019";
  //List liste = const ["ali","ahmet","mehmet"];
  //liste.forEach((eleman) => print(eleman));
  Kapi balkonKapisi = new Kapi();
  balkonKapisi.uretim = "2009";
  //print("giriş kapısı " + girisKapisi.uretim + " - " + balkonKapisi.uretim);

  balkonKapisi.kapiAc();
   print("giriş kapısı " + balkonKapisi.uretim);
  balkonKapisi.kapiKapa();
}
