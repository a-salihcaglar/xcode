import UIKit

//Dictionaries (Sözlükler) ---------------------------------------
//Key-value pairing (Anahtar-değer eşleşmesi)

var myCities = ["Akçakoca":"Düzce","Odunpazarı":"Eskişehir","Başakşehir":"İstanbul"]
myCities
//Sözlükten değer çekme
myCities["Akçakoca"]
myCities["Başakşehir"]
//Anahtarın değerini değiştirme
myCities["Odunpazarı"] = "ESKİŞEHİR"
//Yeni değer ekleme
myCities["Maslak"] = "İstanbul"
myCities
//Str to int sözlüğü
var myDict = ["Run":100,"Swim":200,"Walk":50]
myDict
