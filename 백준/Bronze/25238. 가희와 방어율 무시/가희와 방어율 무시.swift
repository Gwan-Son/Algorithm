import Foundation

let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
let a = Double(input[0])
let b = Double(input[1])

if a - (a * b / 100) >= 100 {
    print(0)
} else {
    print(1)
}