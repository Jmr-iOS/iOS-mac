//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground";

let strArr:[String] = [ "a", "b", "c"];

//note: arrays are ordered, dictionaries are not

//Dictionary Example
var dictExample:[String:String] = ["key1":"a", "key2":"b", "key3":"c"]; //visual ordering here is not stored

//access example
print(dictExample["key2"]);
print(strArr[1]);

//mod example
dictExample["key2"] = "aa";

//add example
dictExample["keyNew"] = "d";

print(dictExample["keyNew"]);

//Make an empty array
var emptyDict:[String:String] = [String:String]();

for element in strArr {

}


for key in dictExample.keys {
    print(key);
}


for (key, value) in dictExample {

    print(key);     //order not guarunteed!
}

