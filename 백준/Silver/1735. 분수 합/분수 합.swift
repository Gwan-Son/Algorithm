import Foundation

let input1 = readLine()!.split(separator: " ").map{ Int($0)! }
let A1 = input1[0]; let B1 = input1[1]
let input2 = readLine()!.split(separator: " ").map{ Int($0)! }
let A2 = input2[0]; let B2 = input2[1]

var A = 0
var B = 0

func gcd(_ a: Int, _ b: Int) -> Int {
    if b == 0 { return a }
    return gcd(b, a % b)
}

if B1 == B2 {
    B = B1
    A = A1 + A2
} else {
    A = A1 * B2 + A2 * B1
    B = B1 * B2
}

let num = gcd(A, B)



print(A / num, B / num)