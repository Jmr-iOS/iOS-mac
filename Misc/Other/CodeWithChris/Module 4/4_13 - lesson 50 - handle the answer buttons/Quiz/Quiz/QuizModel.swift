//
//  QuizModel.swift
//  Quiz
//
//  Created by Christopher Ching on 2015-10-28.
//  Copyright © 2015 Christopher Ching. All rights reserved.
//

import UIKit

class QuizModel: NSObject {

    func getQuestions() -> [Question] {
        
        // Array of Question objects
        var questions:[Question] = [Question]()
        
        // Get Json array of dictionaries
        let jsonObjects:[NSDictionary] = self.getLocalJsonFile()
        
        // Loop through each dictionary and assign values to our question objects
        var index:Int
        for index = 0; index < jsonObjects.count; index++ {
            
            // Current JSON dict
            let jsonDictionary:NSDictionary = jsonObjects[index]
            
            // Create a question obj
            let q:Question = Question()
            
            // Assign the values of each key value pair to the question objct
            q.questionText = jsonDictionary["question"] as! String
            q.answers = jsonDictionary["answers"] as! [String]
            q.correctAnswerIndex = jsonDictionary["correctIndex"] as! Int
            q.module = jsonDictionary["module"] as! Int
            q.lesson = jsonDictionary["lesson"] as! Int
            q.feedback = jsonDictionary["feedback"] as! String
            
            // Add the question to the question array
            questions.append(q)
        }
        
        // Return list of question objects
        return questions
    }
    
    func getLocalJsonFile() -> [NSDictionary] {
        
        // Get an NSURL object pointing to the json file in our app bundle
        let appBundlePath:String? = NSBundle.mainBundle().pathForResource("QuestionData", ofType: "json")
        
        // Use optional binding to check if path exists
        if let actualBundlePath = appBundlePath {
            
            // Path exists
            let urlPath:NSURL = NSURL(fileURLWithPath: actualBundlePath)
            
            let jsonData:NSData? = NSData(contentsOfURL: urlPath)
            
            if let actualJsonData = jsonData {
                
                // NSData exists, use the NSJSONSerialization classes to parse the data and create the dictionaries
                do {
                    let arrayOfDictionaries:[NSDictionary] = try NSJSONSerialization.JSONObjectWithData(actualJsonData, options: NSJSONReadingOptions.MutableContainers) as! [NSDictionary]
                    
                    return arrayOfDictionaries
                }
                catch {
                    // There was an error parsing the json file
                }
            }
            else {
                // NSData doesn't exist
            }
        }
        else {
            // Path to json file in the app bundle doesn't exist
        }
        
        // Return an empty array
        return [NSDictionary]()
    }
    
}
