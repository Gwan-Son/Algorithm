import Foundation

let m = Int(readLine()!)!
var arr = [1, 2, 3]

for _ in 0..<m {
    let input = readLine()!.components(separatedBy: " ").map{ Int(String($0))! }
    let a = arr.firstIndex(of: input[0])!
    let b = arr.firstIndex(of: input[1])!
    arr[a] = input[1]
    arr[b] = input[0]
}
print(arr[0])