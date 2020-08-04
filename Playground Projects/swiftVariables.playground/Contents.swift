import UIKit
//VARIABLES (DEĞİŞKENLER) --------------------------------------------

//DEĞİŞKEN TANIMLAMA ==========================================
//Var ile tanımlanan değişken, sonradan değiştirilebilir. (Aynı değişken tipiyse.)
var userName = "Ahmet Salih"
userName = "AOXIS"  //Var ile tanımlayabildiğimiz için değiştirebildik.

//Let ile tanımlanan değişkenler, DEĞİŞTİRİLEMEZ.
let userAge = 15
let birthDate = 2020 - userAge  //Değişkenler arası işlem yapılabilir. (Değişken tipleri aynıysa)

//DEĞİŞKEN TİPLERİ =============================================

//Stringler: Metinsel ifadeler, "" arasında veya '' arasında yazılır.
var name = "Ahmet" //String örneği
name.append(" Salih")  //String metotlarından biri, sona parantez içindeki ifadeyi ekler.
name.lowercased() //Metni küçültür.
name.uppercased() //Metni büyütür.

//Integer: Tam sayı.
let myNumber = 4
userAge / myNumber   //İki veri de int olduğu için sonuç da tam sayı oldu.

//Double: Ondalıklı sayı.
let userAgeD = 15.0
var myNumberD = 5.0
myNumberD = 4.0
userAgeD / myNumberD

//Boolean: Mantıksal veri tipi.
var myBoolean  = false
myBoolean = true

//DEĞİŞKEN TİPİNİ ÖNCEDEN BELİRLEMEK ============================
var myString : String = "50"
var number : Double = 15
var number2 : Double = 10
number / number2
let stringNumber = String(20)
Int(number) / Int(number2)
Int(stringNumber)
Double(stringNumber)
