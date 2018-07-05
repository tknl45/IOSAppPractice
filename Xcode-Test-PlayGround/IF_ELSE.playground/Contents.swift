//: Playground - noun: a place where people can play

import UIKit

func loveCalulator(yourName: String, hisName: String) -> String{
    
    let loveScore = Int(arc4random_uniform(101))
    
    if loveScore > 80 {
        return "Score:\(loveScore). You love each other likes...."
    }
    else if loveScore > 40 && loveScore <= 80 {
        return "Score:\(loveScore). Together possible...."
    }
    else {
        return "Score:\(loveScore). No love possible...."
    }
    //return loveScore
}

loveCalulator(yourName: "45", hisName: "56")
