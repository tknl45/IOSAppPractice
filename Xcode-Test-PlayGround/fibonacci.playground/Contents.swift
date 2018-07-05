//0 1 1 2 3 5 8

import UIKit

func fibonacci(until: Int){
    var x1 = 0
    var x2 = 0
    for num in 0...until {
        if(num == 0){
            print(num)
            x1 = 0
        }else if(num == 1){
            print(num)
            x2 = 1
        }else{
            let sum = x1 + x2
            print(sum)
            x1 = x2
            x2 = sum
        }
        
        
    }
}
fibonacci(until: 21)
