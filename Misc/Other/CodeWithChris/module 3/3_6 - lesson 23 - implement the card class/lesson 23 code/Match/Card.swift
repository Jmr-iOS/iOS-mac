//
//  Card.swift
//  Match
//
//
//
//

import UIKit

class Card: UIView {

    var cardValue:Int = 0;
    
    var cardImageView:UIImageView = UIImageView();
    
    static var cardNames:[String] = [   "ace",   "card2",   "card3",    "card4",
                                        "card5", "card6",   "card7",    "card8",
                                        "card9", "card10",  "joker",    "queen",
                                        "king",  "ace"];
    
    override init(frame: CGRect) {
        super.init(frame:frame);
        
        //@todo set default image for the imageView
        //@todo add the imageview to the view
        //@todo set the constraints for the imageview
    }
    
    /*This only gets called by a storyboard (ewww.....)
    required init?(coder aDecoder:NSCoder) {
        fatalError("Heh?");
    }*/
    
    
}

