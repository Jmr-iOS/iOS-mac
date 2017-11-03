//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Arrays are a class

//Simple Array Example
var a:String = "a"
var b:String = "b"
var c:String = "c"

var myArray:[String] = [a,b,c]

var myOtherArray:[String] = ["book", "cat", "jimmy"]

myOtherArray[1] = myArray[2]

myOtherArray

//You can add more items after declaration (Eww)
myOtherArray.count
myOtherArray.insert("Eww", atIndex: 1)
myOtherArray.append("Yum?")
myOtherArray += ["Lookie", "Here"]
myOtherArray.count

//You can also remove items (Eww again...)
myOtherArray.removeAtIndex(2)
myOtherArray.count

//Declaring a new empty array
var mySecondArray:[Int] = [Int]()
mySecondArray.count

