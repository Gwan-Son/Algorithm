import Foundation

let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
let n = input[0], k = input[1]

var arr = readLine()!.split(separator: " ").map{ Int(String($0))! }.sorted(by: >)

print(arr[k - 1])