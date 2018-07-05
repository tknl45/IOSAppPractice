//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit

//引入聲音package
import AVFoundation

class ViewController: UIViewController{
    
    
    //聲音執行組建
    var player: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    //鍵盤聲音對應
    @IBAction func notePressed(_ sender: UIButton) {
        //將tag值傳入
        plySound(tag: sender.tag)
    }
    
    
    //  執行播放聲音函式
    func plySound(tag:Int){
        
        //組聲音檔案url
        let sound = Bundle.main.url(forResource:"note\(tag)", withExtension: "wav")
        
        //使用do try catch 抓取錯誤
        do {
            //try 抓取錯誤
            player = try AVAudioPlayer(contentsOf: sound!)
            
            //如果player為null 停止繼續執行（return）
            guard let player = player else { return }
            
            //
            player.prepareToPlay()
            
            //執行音樂播放
            player.play()
            
        //當發生錯誤
        } catch let error {
            //顯示錯誤
            print(error.localizedDescription)
        }
    }
    
  

}

