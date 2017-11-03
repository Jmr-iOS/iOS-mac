//: Playground - noun: a place where people can play

import UIKit

//

var str = "Hello, playground";

/************************************************************************************************************/
/* Example: Optional Var Declaration                                                                        */
/************************************************************************************************************/
var myString:String?;   //The '?' makes it an Optional (it MAY have a value in it!)
                        //Optionals are new to Swift (makes it more safe)
                        //So everything in Swift is assumed to have a value if non-optional

myString = "text";


/************************************************************************************************************/
/* Example: Forced Unwrapping                                                                               */
/************************************************************************************************************/
myString!               //The '!' is forced unwrapping. The '!' unwraps the optional wrapper on it
                        //You are telling Xcode you gauruntee it has a value (risky!!!)

    //a good practice
    if(myString != nil) {

    }

    //Optional Binding
    if let unwrapped = myString {
        //myString has a value
    } else {
        //nope!
    }

/************************************************************************************************************/
/* Example: Implicitly Unwrapped Optional                                                                   */
/************************************************************************************************************/
var anotherString:String!   //Can be nil, and you don't have to force it to unwrap