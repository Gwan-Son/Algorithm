import Foundation

let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
let a = input[0], b = input[1], c = input[2]

if c % 2 == 0 {
    print(a)
} else {
    print(a ^ b)
}
