import Foundation

let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
let n = input[0], m = input[1]
let arr = readLine()!.split(separator: " ").map{ Int(String($0))! }

let sum = arr.filter{ $0 != 1 }.reduce(0, +) - n

if sum >= m {
    print("DIMI")
} else {
    print("OUT")
}
