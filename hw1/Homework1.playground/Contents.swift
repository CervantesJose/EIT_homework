import UIKit

func fibonacci(n: Int) {
    var num1 = 0
    var num2 = 1
    
    for _ in 0..<n {
        let num = num1 + num2
        
        num1 = num2
        num2 = num
    }
    print("After \(n) steps, fib number is: \(num2)")
}

fibonacci(n: 5)
