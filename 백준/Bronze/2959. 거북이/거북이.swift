import Foundation

var arr = readLine()!.split(separator: " ").map{ Int($0)! }
arr.sort()

let a = min(arr[0], arr[1])
let b = min(arr[2], arr[3])

print(a * b)