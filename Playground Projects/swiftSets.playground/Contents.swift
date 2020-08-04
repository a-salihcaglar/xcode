import UIKit

//Sets (Setler) ------------------------------------------------
//Sırasız array (dizi). İndexleme, sonradan ekleme (append) yok. Öğe tekrarı da yok.
//Unordered collection, unique elements
//Duplike elemanları elimine etmek için array, set, array dönüştürülebilir.
var mySet : Set = [1,2,3,4]
mySet.first
var myStringSet : Set = ["a","b","c","a"]

var mySet1 : Set = [1,2,3]
var mySet2 : Set = [3,4,5]
var mySet3 = mySet1.union(mySet2)
var mySortedSet = mySet3.sorted()
print(mySortedSet)
