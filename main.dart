
void selamVer(String isim)
{
  print("Merhaba " + isim);
}

void test(a,b,c){
print(a);
print(b);
print(c);
}
void test1(a,[b,c]){
print(a);
print(b);
print(c);
}
void test2(a,{b,c}){
print(a);
print(b);
print(c);
}

void main() {
//functions  
test2("a yı", b :"b yi", c : "c yi");

test("a yı", "b yi", "c yi");
test1("a yı");

selamVer("Faruk");

//Maps
  var sozluk = {"book": "Kitap", "table": "Masa", "pencil": "Kalem"};
  sozluk["teacher"] = "Öğretmen";
  sozluk["book"] = "Kitap 1";
  
  sozluk.forEach((k,v)=> print(k+" deger "+ v));

  // print(sozluk.containsKey("book"));
  // print("Eleman Sayisi "+sozluk.length.toString());
  // print(sozluk.remove("book"));
  // sozluk.clear();
  // sozluk.containsKey("book");
  for (var eleman in sozluk.values) {
    print(eleman);
  }
  print(sozluk["teacher"]);

//Loops
  var sayid = 10;
  do {
    print(sayid);
    sayid++;
  } while (sayid <= 10);

  var sayiw = 5;
  while (sayiw <= 10) {
    print(sayiw);
    sayiw++;
  }

  var sehileril = ["Ankara", "İstanbul", "İzmir"];
  for (var item in sehileril) {
    print(item);
  }

  for (var i = 1; i <= 10; i++) {
    print(i);
  }

  ///Lists
  var sehirler = ["Ankara", "İstanbul", "İzmir", "Bursa"];
  sehirler.add("Kars");
  sehirler.insert(1, "Bursa");
  print(sehirler);
  print(sehirler.length);
  print(sehirler.first);
  print(sehirler.last);
  print(sehirler.firstWhere((s) => s.contains("t")) + " buldu");
  var ogrenciler = new List(3);
  ogrenciler[0] = "Ahmet";
  ogrenciler[1] = "Mehmet";
  ogrenciler[2] = "Faruk";

  ///İf else switch case structures
  print(ogrenciler);
  var sayim = 20;

  if (sayim > 20) {
    print("sayi büyük");
  } else if (sayim == 20) {
    print("sayi esit");
  } else {
    print("küçük");
  }

//string

  String isim = "Faruk";
  print("Merhaba" + isim);

  int sayi = 10;

  print(sayi);
}
