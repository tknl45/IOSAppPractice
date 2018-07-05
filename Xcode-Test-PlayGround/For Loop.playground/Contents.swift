
import UIKit

var arrayOfNumbers = [1,3,5,7,9,2,4,6,8,0]

var sum = 0

for num in arrayOfNumbers {
    print(num)
    
    sum += num
}

print("sum = \(sum)")


var sum2 = 0;
for xxx in 1...10 where xxx % 2 == 0{
    sum2 += xxx
}

print(sum2)
