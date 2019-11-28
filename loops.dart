main() {
 /**** forEach döngüsü ****/ 
 print("------------ forEach ------------");
Function fonksiyon  = (eleman) {
  if (eleman.isOdd)
  print("$eleman bir Tek sayı");
  else
  print("$eleman bir Çift sayı");
};

List<int> sayilar = [2,5,7,10,23,56,77];
sayilar.forEach(fonksiyon);
  
List<int> sayilar2 = [20,50,70,100,230,560,770];
sayilar2.forEach(fonksiyon);  

/**** for döngüsü ****/
 print("------------ for ------------");
int toplam = sayilar.length;

for (var i = 0; i < toplam; i++){
  var eleman = sayilar[i];
  if (eleman.isOdd)
  print("$eleman bir Tek sayı");
  else
  print("$eleman bir Çift sayı");

  //if (i == 5) sayilar.add(33);
}

/**** for in döngüsü ****/
 print("------------ for in ------------");
for(var eleman in sayilar){
  if(eleman.isOdd)
  print("$eleman bir Tek sayı");
  else
  print("$eleman bir Çift sayı");
}

/**** while döngüsü ****/
print("------------ while ------------");
int s = 0;

while (s < 10){
  print('s değeri: $s');
  s++;
//if (s == 7) break; 
//if(s > 4 ) continue; 
}

/**** while döngüsü ****/
print("------------ do while ------------");

do {
  
  print('s değeri: $s');
  s++;
} while (s < 10);


}
