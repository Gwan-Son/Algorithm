import Foundation

let g = Int(readLine()!)!

var isAnswer = true

for a in 2...50000 {
    if a > g { break }
    for b in 1..<a {
        if a + b > g {
            break
        } else if (a + b) * (a - b) == g {
            print(a)
            isAnswer = false
        }
    }
}
if isAnswer {
    print(-1)
}