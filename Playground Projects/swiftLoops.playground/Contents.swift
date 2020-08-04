import UIKit

//While döngüsü. Koşul doğru olduğu sürece içindeki komutlar çalışır.

var number = 1
while number <= 10{
    print(number)
    number += 1
}

//For döngüsü. Genelde array'lerde gezinmek için kullanılır.

var myFruitArray = ["Apple","Banana","Orange"]

for fruit in myFruitArray{
    print(fruit)
}

var myNumbers = [10,20,30,40,50]

for i in myNumbers{
    print(i/5)
}

//1'den 5'e sayı bastırma
for myNumber in 1...5{
    print(myNumber)
}
