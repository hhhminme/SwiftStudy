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

//5 class
class Animal{
    var legCount = 0
    var name:String
    init(name:String){
        self.name = name
    }
    func simpleDescription() -> String {
        return "This \(name) has \(legCount) legs"
    }
}

let monster = Animal(name: "Lark")
monster.legCount = 2
monster.simpleDescription()

//c
class Mammal:Animal{
    override init(name: String){
        super.init(name: name)
        legCount = 4
    }
    override func simpleDescription() -> String {
        "M(\(name))"
    }
    
    func giveBirth() -> Mammal {
        return Mammal(name: "A baby \(name)")
    }
}

let el = Mammal(name : "Elephant")
el.legCount
el.simpleDescription()
let baby = el.giveBirth()
el.simpleDescription()
baby.simpleDescription()

monster.simpleDescription()


class Dog : Mammal{
    func bark() -> String{
        "Bark!"
    }
    override func giveBirth() -> Mammal {
        Dog(name : "Baby \(name)")
    }
}

let d = Dog(name: "Jindol")
d.bark()
d.legCount

let puppy = d.giveBirth() as? Dog
puppy!.bark()


let d1 = puppy?.simpleDescription()
type(of: d1)

class Platypus : Mammal{
    override func giveBirth() -> Mammal {
        print("Laying an egg")
        return layEgg()
    }
    func layEgg() -> Platypus{
        Platypus(name: "Platypus from an egg")
    }
}

let p = Platypus(name: "p1")
p.name
let p1 = p.layEgg()
p1.name

let arr = [Dog(name: "d"),
           Mammal(name: "E"),
           Platypus(name: "p")]
for animal in arr{
    let child = animal.giveBirth()
    print("Name: \(child.name)")
}

class Monster:Mammal{
    var kneeCount : Int {
        return legCount
    }
    var toeCount : Int {
        get {
            return legCount * 4
        }
        set(count){
            legCount = count / 4
        }
    }
    var eyeCount = 0 {
        didSet {
            legCount = 2 * eyeCount
        }
    }
}

let m = Monster(name : "Goo")
m.kneeCount
m.toeCount
m.toeCount = 20
m.kneeCount

m.eyeCount = 123
m.legCount


enum Rank : Int{
    case Ace, Two, three
}

enum ServerResponse {
    case Result(String, String)
    case Error(String)
}

let success = ServerResponse.Result("kim", "Seoul")
let failure = ServerResponse.Error("Invalid name")

func desc(sr: ServerResponse) -> String{
    switch (sr) {
    case let .Result(name, city):
        return "name: \(name) City : \(city)"
    case let .Error(cause):
        return "Error : \(cause)"
    }
}

desc(sr: success)
desc(sr: failure)

class ClassPerson{
    var name : String
    var age : Int
    init(name: String, age: Int){
        self.name = name
        self.age = age
    }
}


