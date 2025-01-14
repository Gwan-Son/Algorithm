import Foundation

let n = Int(readLine()!)!
var answer = 1

var temp = 1
for _ in 1...n {
    temp *= 2
}
answer += temp
print(answer * answer)
