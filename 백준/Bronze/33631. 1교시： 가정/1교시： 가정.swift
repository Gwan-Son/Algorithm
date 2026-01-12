import Foundation

var gradients = readLine()!.split(separator: " ").map{ Int(String($0))! }
let mkCookie = readLine()!.split(separator: " ").map{ Int(String($0))! }
var cookies = 0

let q = Int(readLine()!)!

for _ in 0..<q {
    let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
    
    if (2...5).contains(input[0]) {
        gradients[input[0] - 2] += input[1]
        print(gradients[input[0] - 2])
    } else {
        var isMkCookie = true
        for i in 0..<4 {
            if gradients[i] < (mkCookie[i] * input[1]) {
                isMkCookie = false
                break
            }
        }
        
        if isMkCookie {
            for i in 0..<4 {
                gradients[i] -= (mkCookie[i] * input[1])
            }
            cookies += input[1]
            print(cookies)
        } else {
            print("Hello, siumii")
        }
    }
}
