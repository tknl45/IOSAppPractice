//: Playground - noun: a place where people can play

import UIKit

func bmi_calc(kg:Double , height:Double){
    let bmi = kg / (height * height)
    var shortBmi = String(format:"%.2f",bmi)
    if bmi > 25 {
        print("bmi : \(shortBmi). over weight")
    }
    else if bmi > 18.5 && bmi < 25 {
        print("bmi : \(shortBmi). normal")
    }
    else{
        print("bmi : \(shortBmi). under weight")
    }
}


bmi_calc(kg: 83, height: 1.8)
