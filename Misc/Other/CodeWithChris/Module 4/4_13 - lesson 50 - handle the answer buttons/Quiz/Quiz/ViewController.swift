//
//  ViewController.swift
//  Quiz
//
//
//
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollViewContentView: UIView!;
    @IBOutlet weak var moduleLabel: UILabel!;
    @IBOutlet weak var questionLabel: UILabel!;
    
    let model:QuizModel = QuizModel();
    var questions:[Question] = [Question]();
    var currentQuestion:Question?;
    var answerButtonArray:[AnswerButtonView] = [AnswerButtonView]();
    
    override func viewDidLoad() {
        super.viewDidLoad();
        
        // Get the questions from the quiz model
        self.questions = self.model.getQuestions();
        
        // Check if there's at least 1 question
        if self.questions.count > 0 {
            
            // Set the current question to first question
            self.currentQuestion = self.questions[0];
            
            // Call the display question method
            self.displayCurrentQuestion();
        }
        
    }
    
    func displayCurrentQuestion() {
        
        if let actualCurrentQuestion = self.currentQuestion {
            
            // Update the question text
            self.questionLabel.text = actualCurrentQuestion.questionText;
            
            // Update the model and lesson label
            self.moduleLabel.text = String(format:"Module: %i Lesson: %i", actualCurrentQuestion.module, actualCurrentQuestion.lesson);
            
            // Create and display the answer button views
            self.createAnswerButtons();
        }
        
    }
    
    func createAnswerButtons() {
        
        var index:Int;
        
        for index = 0; index < self.currentQuestion?.answers.count; index++ {
            
            // Create an answer button view
            let answer:AnswerButtonView = AnswerButtonView();
            answer.translatesAutoresizingMaskIntoConstraints = false;
            
            // Place it into the content view
            self.scrollViewContentView.addSubview(answer);
            
            
            //Add a tapGestureRecognizer
            let tapGesture:UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "answerTapped:");
            
            answer.addGestureRecognizer(tapGesture);
            
            
            // Add constraints depending on what number button it is
            let heightConstraint:NSLayoutConstraint = NSLayoutConstraint(item: answer, attribute: NSLayoutAttribute.Height, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1, constant: 100);
            
            answer.addConstraint(heightConstraint);
            
            let leftMarginConstraint:NSLayoutConstraint = NSLayoutConstraint(item: answer, attribute: NSLayoutAttribute.Left, relatedBy: NSLayoutRelation.Equal, toItem: self.scrollViewContentView, attribute: NSLayoutAttribute.Left, multiplier: 1, constant: 0);
            
            let rightMarginConstraint:NSLayoutConstraint = NSLayoutConstraint(item: answer, attribute: NSLayoutAttribute.Right, relatedBy: NSLayoutRelation.Equal, toItem: self.scrollViewContentView, attribute: NSLayoutAttribute.Right, multiplier: 1, constant: 0);

            let topMarginConstraint:NSLayoutConstraint = NSLayoutConstraint(item: answer, attribute: NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal, toItem: self.scrollViewContentView, attribute: NSLayoutAttribute.Top, multiplier: 1, constant: CGFloat(101 * index));
            
            self.scrollViewContentView.addConstraints([leftMarginConstraint, rightMarginConstraint, topMarginConstraint]);
            
            // Set the answer text for it
            let answerText = self.currentQuestion!.answers[index];
            answer.setAnswerText(answerText);
            
            // Add it to the button array
            self.answerButtonArray.append(answer);
        }
        
        // Adjust the height of the content view so that it can scroll if need be
        let contentViewHeight:NSLayoutConstraint = NSLayoutConstraint(item: self.scrollViewContentView, attribute: NSLayoutAttribute.Height, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: CGFloat(self.currentQuestion!.answers.count), constant: 101);
        
        // Add constraint to content view
        self.scrollViewContentView.addConstraint(contentViewHeight);
        
        return;
    }
    
    //@note if-let says 'do this only if the assignment produced not a nil value in the '=' assignment
    func answerTapped(gesture:UITapGestureRecognizer) {

        
        //Get access to the answer that was tapped
        let answerButtonThatWasTapped:AnswerButtonView? = gesture.view as! AnswerButtonView;
        
        print((answerButtonThatWasTapped?.answerLabel.text)!);
        
        if let actualButton = answerButtonThatWasTapped {
         
            //We got the button, now find out which index it was
            let answerTappedIndex:Int? = self.answerButtonArray.indexOf(actualButton); //look for the index of actualButton (nil if !found)
                                                                                       //note - use find, not indexOf for [Int]
            if let foundAnswerIndex = answerTappedIndex {
             
               //If we found the index, compare the answer index that was tapped vs the correct index from the question
                
                if foundAnswerIndex == self.currentQuestion!.correctAnswerIndex {
                    print("correct!");//correct!
                } else {
                    print("nope!");//nope!
                }
            }
        }
        
        return;
    }

    
    override func didReceiveMemoryWarning() { super.didReceiveMemoryWarning(); }
}

