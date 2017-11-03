//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Person {
    
    var Name:String
    var Age:Int
    
    init() {
        self.Name = "Initial Name"
        self.Age  = 10
    }

    //Instance-type method (only called on the object)
    func UpdateNameAndAge(name:String, age:Int){
        self.Name = name
        self.Age  = age
    }
    
    //Instance-type method (only called on the object)
    func IncreaseAge(ageToIncreaseBy:Int) -> Int {
        self.Age += ageToIncreaseBy
    
        return self.Age
    }
    
    //Class-type method (for the class!) can you do on instance too?
    class func AvgAge() -> Double {
        return 50.0
    }
}


var a = Person()
a.UpdateNameAndAge("Tim", age:10)

a.Age
a.Name

var newAge = a.IncreaseAge(5)

a.Age
a.Name

var c = Person.AvgAge()

