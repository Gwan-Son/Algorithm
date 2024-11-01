import Foundation

let n = Int(readLine()!)!
let m = Int(readLine()!)!
let S = Array(readLine()!)

var i = 0
var count = 0
var answer = 0

while i < m - 2 {
    if String(S[i...i+2]) == "IOI" {
        count += 1
        i += 2
        if count == n {
            count -= 1
            answer += 1
        }
    } else {
        i += 1
        count = 0
    }
}

print(answer)
