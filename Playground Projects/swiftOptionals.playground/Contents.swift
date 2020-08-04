import UIKit

//Optionals (Opsiyoneller) ------------------------------
// ? konulursa, değişkene değer ATANAMAYABİLECEĞİ söylenir.
// ! konulursa, KESİN değer atanacağı söylenir, atanmazsa program patlar.
var myName : String? = "Salih"
// ? koyduğumuz için, değer varsa büyüttü. Yoksa output vermedi (boşluk).
myName?.uppercased()


var myAge = "15"
// ?? default değer atamayı sağlar, kullanım aşağıda. Eğer myAge'de Int olacak bir değer varsa Int yapıp çarpar. Yoksa default olarak 10 değerini kullanır.
var myIntegerAge = (Int(myAge) ?? 10)*5


// If let kullanımı;
//Eğer myNumber, myAge'i Int'e çevrilip ona atanabilirse, ata ve 5'le çarpıp bastır.
//Atanamazsa (myAge stringse) "Wrong input!" bastır. Yukarıdaki ?? 'den farklı olarak user'a hata mesajı gönderilebilir.
if let myNumber = Int(myAge){
    print(myNumber*5)
}else{
    print("Wrong input!")
}
