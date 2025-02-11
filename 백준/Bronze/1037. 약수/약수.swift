import Foundation

let n = Int(readLine()!)!

var arr = [Int]()

arr = readLine()!.split(separator: " ").map{ Int($0)! }

arr.sort()

print(arr.first! * arr.last!)