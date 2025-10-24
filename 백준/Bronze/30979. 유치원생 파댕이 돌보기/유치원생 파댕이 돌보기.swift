import Foundation

let t = Int(readLine()!)!
let n = Int(readLine()!)!
let totalCandies = readLine()!.split(separator: " ").map{ Int(String($0))! }.reduce(0, +)

if totalCandies >= t {
    print("Padaeng_i Happy")
} else {
    print("Padaeng_i Cry")
}
