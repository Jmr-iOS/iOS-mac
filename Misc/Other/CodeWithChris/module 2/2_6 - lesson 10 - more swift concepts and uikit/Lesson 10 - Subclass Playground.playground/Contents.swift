//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Person {
    
    var Name:String = "Initial Name"

    init() {
        print("  ")
    }
    
    func Walk() {
        print(Name + " is currently walking...?")
    }
}

var a = Person()
a.Name = "Alice"
a.Walk()


class SuperHuman : Person {
 
    var AlterEgoName:String = "Clark"

    override init() {
        super.init()
    }
    
    func Fly() {
        print("I'm flying now...")
    }
    
    override func Walk() {
        print("Slowly, ")
        super.Walk()
    }
}

var b = SuperHuman()
b.Name
b.Walk()
b.Fly()



