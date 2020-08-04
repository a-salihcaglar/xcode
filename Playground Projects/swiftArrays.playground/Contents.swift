import UIKit

//ARRAYS (DİZİLER) -------------------------------------
var myFavouriteFruits = ["Banana","Strawberry","Apple",3] as [Any]
            //as [Any] , array'in içine her türlü veriyi alabilmesini sağlar.
            //Any olduğu için uppercased() gibi metotlar kullanılamaz.

//Array verilerini index'leme
myFavouriteFruits[0]
myFavouriteFruits[1]
myFavouriteFruits[2]
myFavouriteFruits[3]

var myStringArray = ["Tim Cook","Steve Jobs",]
myStringArray[0].uppercased()
myStringArray[1].uppercased()

myStringArray.count   //Array'deki öğe sayısını döndürür.
myStringArray[myStringArray.count - 1] //Count kullanarak son öğe döndürme.
myStringArray.last //Sonuncu öğeyi döndürür.
myStringArray.sort() //Alfabe sırasına göre sıralar.
