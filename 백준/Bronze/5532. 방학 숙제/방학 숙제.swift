import Foundation

let L = Int(readLine()!)!
let B = Int(readLine()!)!
let A = Int(readLine()!)!
let C = Int(readLine()!)!
let D = Int(readLine()!)!
var maximum = 0

if B % C != 0 {
    maximum = max(maximum, B / C + 1)
} else {
    maximum = max(maximum, B / C)
}

if A % D != 0 {
    maximum = max(maximum, A / D + 1)
} else {
    maximum = max(maximum, A / D)
}

print(L - maximum)