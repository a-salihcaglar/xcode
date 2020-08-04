import UIKit

//Fonksiyonlar, kod blokları. Kod tekrarlamalarını önler ve kodu kısaltır. Kodu düzenli tutar.

func myFunction(){
    print("My first function.")
}

myFunction()

//Input & Output & Return

//Input alırsak fonksiyon parantezinde ad (a) ve tip (: Int) olarak belirtilir. Virgülle ayrılır.
//Output print'le bastırılır. Veya return ile döndürülür. Sonra değişkene atanır veya bastırılır.
//Output return ile değer döndürme yapılacaksa, () ve {} arasına ->dönenDeğişkenTipi (->Int , ->Bool) şeklinde yazılır.

func sumFunction(x: Int,y: Int)->Int{
    return x+y
}

print(sumFunction(x: 10, y: 20))

func logicFunction(a: Int, b: Int)->Bool{
    if a > b{
        return true
    }else{
        return false
    }
}

logicFunction(a: 10, b: 20)
logicFunction(a: 20, b: 10)
