//  ViewController.swift
//  War

import UIKit

//@note  Once you get comfortable with Swift and UIKit, you don't need to use storyboards. You can just programatically create them!
//@note  In Swift, 'const' == 'let'. Ewww....
//@todo  Make a 'Purr' button that initiates a seperate thread that changes each card every 1 second, and also stops this
class ViewController: UIViewController {
    
    @IBOutlet weak var firstCardImageView:  UIImageView!
    @IBOutlet weak var secondCardImageView: UIImageView!
    @IBOutlet weak var playAroundButton:    UIButton!
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    
    @IBOutlet weak var playerScoreLabel: UILabel!
    @IBOutlet weak var enemyScoreLabel: UILabel!
    
    var enemyScore  = 0
    var playerScore = 0
    var cardNamesArray:[String] = ["card2", "card3", "card4", "card5", "card6", "card7",
                                   "card8", "card9", "card10", "card11", "card12",
                                   "card13", "card1"]
    override func viewDidLoad() {
        super.viewDidLoad()
    
        print("View did load. Yup!")

        return
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    @IBAction func PlayRoundTapped(sender: UIButton) {
    
        //Grab Card Nums
        let firstCardNum  = Int(arc4random_uniform(13))
        let secondCardNum = Int(arc4random_uniform(13))
        
        //Make Card Names
        let firstCardString:String  = cardNamesArray[firstCardNum]
        let secondCardString:String = cardNamesArray[secondCardNum]
        
        //Update the cards
        self.firstCardImageView.image  = UIImage(named: firstCardString)
        self.secondCardImageView.image = UIImage(named: secondCardString)
        
        print("Meow?")
        
        if (firstCardNum > secondCardNum) {
            
            self.playerScore++
            self.playerScoreLabel.text = String(self.playerScore)
            
        } else if (firstCardNum == secondCardNum) {
            
            
            //Nadda!
            
        } else {
            
            self.enemyScore++
            self.enemyScoreLabel.text = String(self.enemyScore)
        }
        
        
        
        return
    }
}

