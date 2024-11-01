import Foundation

let n = Int(readLine()!)!
let m = Int(readLine()!)!
let S = readLine()!

var ioi = ""
var count = 0

for i in 0..<(2 * n + 1) {
    if i % 2 == 0 {
        ioi += "I"
    } else {
        ioi += "O"
    }
}

for i in 0...(m - (2 * n + 1)) {
    let first = S.index(S.startIndex, offsetBy: i)
    let end = S.index(S.startIndex, offsetBy: 2*n + i)
    if S[first...end] == ioi {
        count += 1
    }
}

print(count)
