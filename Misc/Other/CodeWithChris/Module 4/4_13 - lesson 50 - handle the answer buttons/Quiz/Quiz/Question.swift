//
//  Question.swift
//  Quiz
//
//  Created by Christopher Ching on 2015-10-28.
//  Copyright © 2015 Christopher Ching. All rights reserved.
//

import UIKit

class Question: NSObject {

    var questionText:String = ""
    var answers:[String] = [String]()
    var correctAnswerIndex:Int = 0
    var module:Int = 0
    var lesson:Int = 0
    var feedback:String = ""
}
