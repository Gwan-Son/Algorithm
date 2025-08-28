import Foundation

let input = readLine()!.split(separator: " ").map{ Int(String($0))! }

let n = input[0], m = input[1]

let j = Int(readLine()!)!

var basketLeft = 1
var basketRight = m

var result = 0

for _ in 0..<j {
    let apple = Int(readLine()!)!
    if apple < basketLeft {
        result += basketLeft - apple
        basketLeft = apple
        basketRight = basketLeft + m - 1
    } else if apple > basketRight {
        result += apple - basketRight
        basketRight = apple
        basketLeft = basketRight - m + 1
    }
}

print(result)
