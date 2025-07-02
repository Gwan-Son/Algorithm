import Foundation

let n = Int(readLine()!)!
let arr1 = readLine()!.split(separator: " ").map{ Int(String($0))! }
let arr2 = readLine()!.split(separator: " ").map{ Int(String($0))! }

var answer = 0
for i in 0..<n {
    arr1[i] <= arr2[i] ? answer += 1 : ()
}
print(answer)