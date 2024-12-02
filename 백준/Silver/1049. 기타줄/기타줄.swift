import Foundation

let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
var N = input[0]
var M = input[1]

var sixLine = [Int]()
var oneLine = [Int]()

for _ in 0..<M {
    let brand = readLine()!.split(separator: " ").map{ Int(String($0))! }
    sixLine.append(brand[0])
    oneLine.append(brand[1])
}

var result = 0

let six = sixLine.min()!
let one = oneLine.min()!

while N > 0 {
    if N > 6 {
        let oneBuySix = 6 * one
        if six > oneBuySix {
            result += oneBuySix
            N -= 6
        } else {
            result += six
            N -= 6
        }
    } else {
        let oneBuyLeft = one * N
        if six > oneBuyLeft {
            result += oneBuyLeft
            N = 0
        } else {
            result += six
            N = 0
        }
    }
}

print(result)
