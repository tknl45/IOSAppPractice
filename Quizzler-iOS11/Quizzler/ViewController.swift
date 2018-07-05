//
//  ViewController.swift
//  Quizzler
//
//  Created by Angela Yu on 25/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

//View
class ViewController: UIViewController {
    
    let allQuestions = QuestionBank()
    var questionNumber : Int = -1
    var pickedAnswer : Bool = false
    var score : Int = 0
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nextQuestion()
    }


    @IBAction func answerPressed(_ sender: AnyObject)
    {
        pickedAnswer = (sender.tag == 1) ? true : false
        
        checkAnswer()
        nextQuestion()
    }
    
    
    func updateUI() {
        
        scoreLabel.text = "Score:\(score)"
        
        //顯示題數
        progressLabel.text = "\(questionNumber+1)/13"
        
        //顯示進度條
        progressBar.frame.size.width = (view.frame.size.width / 13) * CGFloat(questionNumber+1)
        
    }
    
    //Alert 是否重新開始題目
    func alertStartover(){
        let alert = UIAlertController(title: "警告", message: "已完成全部題目，是否重新開始?", preferredStyle: .alert)
        
        let restartAction = UIAlertAction(title: "重新開始", style: .default, handler: { (uiaction) in
            self.startOver()
        })
        
        alert.addAction(restartAction)
        
        present(alert, animated: true, completion: nil)
    }
    
    //下一題
    func nextQuestion() {
        
        
        if(allQuestions.list.count <= questionNumber + 1){
            alertStartover()
            return
        }
        
        questionNumber = questionNumber + 1
        
        let firstQuestion = allQuestions.list[questionNumber]
        questionLabel.text = firstQuestion.qursitonText
        
        
        updateUI()
    }
    
    //檢查答案
    func checkAnswer() {
        if(allQuestions.list[questionNumber].answer == pickedAnswer) {
            print("You got it.")
            
            //使用第三方元件ProgressHUD
            ProgressHUD.showSuccess("正確")
            
            //分數增加
            score += 1
        }
        else{
            print("WRONG!!!")
            
            //使用第三方元件ProgressHUD
            ProgressHUD.showError("錯誤")

        }
    }
    
    //重新開始
    func startOver() {
       //初始化
        questionNumber = -1
        
        //分數歸0
        score = 0
        
        nextQuestion()
       
    }
    

    
}
