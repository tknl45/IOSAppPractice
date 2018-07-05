//
//  Question.swift
//  Quizzler
//

import Foundation

//建立試題物件
class Question {
    //是非題問題描述
    let qursitonText : String
    
    //是非題答案
    let answer : Bool
    
    init(text:String, correctAnswer: Bool) {
        
        qursitonText = text
        answer = correctAnswer
        
    }
}


class myOtherClass {
    //建立題目
    let quesiton = Question(text: "1+1=2", correctAnswer: true)
    let quesiton2 = Question(text: "1+2=2", correctAnswer: false)
}
