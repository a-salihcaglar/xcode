import UIKit

//if else elif kontrolleri...
//And -> &&
3<5 && 4<5
3<5 && 5<4
4<3 && 7<3
//Or -> ||
3<5 || 4<5
3<5 || 5<4
4<3 || 7<3

var myAge = 15
myAge = 20
if myAge < 18{
    print("Henüz reşit değilsiniz.")
} else if myAge > 18 && myAge < 25{
    print("Yaşınız, 18-25 aralığında ve reşitsizin.")
} else{
    print("Reşitsiniz.")
}
