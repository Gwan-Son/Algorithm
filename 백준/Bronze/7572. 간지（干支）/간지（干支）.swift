import Foundation

let numbers = ["6", "7", "8", "9", "0", "1", "2", "3", "4", "5"]
let alphas = ["I", "J", "K", "L", "A", "B", "C", "D", "E", "F", "G", "H"]

let n = Int(readLine()!)!

print("\(alphas[n % 12] + numbers[n % 10])")
