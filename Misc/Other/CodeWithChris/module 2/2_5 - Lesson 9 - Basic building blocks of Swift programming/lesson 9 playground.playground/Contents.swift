//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Person {
    
    //Class-Property Declaration
    var NameVar:String = "Initial Name"
    
    init() {
        print("New person was initialized")
        self.sayCheese()
    }
    
    func sayCheese() {
        print("Cheese")
    }
}

Person()

var b = Person()

b.sayCheese()

//Variable Declaration
var x:Int     = 10
var y:Int     = 15
var total:Int = x + y

//Hmmm....
b.NameVar = "Test"


//another example
var firstPerson = Person()

firstPerson.NameVar             //Access the init value
firstPerson.NameVar = "Justin"  //Now it has changed
firstPerson.NameVar

var secondPerson = Person()
secondPerson.NameVar

//Changing Class-Level Specs
//(nope-ah) Person.NameVar = "?"

