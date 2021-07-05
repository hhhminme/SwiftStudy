import UIKit
//1 swift란
//<a> var vs let

//<b>

//<c>
var name:String = "asd"
//name = 12

//<d>
var seconds = 3.3
seconds = 4

var value = 10
//value = 4.2

//<g> interpolation
let pi = 3.14
let msg = "value of pi is \(pi)"
print(msg)

//2 collection type
//a
let names = ["kim","Lee","Park"]
//let kim = names[0]
//let count = names.count

//b
//names.append("choi")

//Dictionary
//<h>
var ages = ["Kim":10, "Lee":20]
ages["Kim"]
ages = [:]

//<j>
var x = [1,2,3]
x.contains(2)
x.contains(10)
var count = x.count

//k

let kim = ages["Kim"]
print(kim)

//3 Control Flow 와 Optional
//let ages3 = ["Kelly":13, "Mac":18,"John":34, "Kim":29]
//var dollar = 0
//var names3 = ["Kelly","Grace","Kim"]
//for name in names3 {
//    let age = ages[name]
//    if age != nil{
//        if age! > 19{
//            dollar += 20
//        }else{
//            dollar == 15
//        }
//    } else {
//        dollar += 20
//    }
//}
//print("Total cost: \(dollar)")

let ages3 = ["Kelly":13, "Mac":18,"John":34, "Kim":29]
var dollar = 0
var names3 = ["Kelly","Grace","Kim"]
for name in names3 {
    if let age = ages[name]{
        if (age > 19){
            dollar += 20
        } else {
            dollar += 15
        }
    } else {
        dollar += 20
    }
}
print("Total cost: \(dollar)")

//4 function clouser

