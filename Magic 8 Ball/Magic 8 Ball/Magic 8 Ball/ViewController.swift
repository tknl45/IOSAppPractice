//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by five on 2018/7/2.
//  Copyright © 2018年 five. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var balls:Array = ["ball1","ball2","ball3","ball4","ball5"]
    var i:Int = 0
    
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ask()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        ask()
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        ask()
    }
    
    func ask(){
        
        i = Int(arc4random_uniform(5))
        imageView.image = UIImage(named:balls[i])
    }
}

