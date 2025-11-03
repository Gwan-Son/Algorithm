import Foundation

let n = Int(readLine()!)!

var arr = [Int](1...n)
var result = [Int]()


while !arr.isEmpty {
    result.append(arr.removeFirst())
    if !arr.isEmpty {
        arr.append(arr.removeFirst())
    }
}

print(result.map{ String($0) }.joined(separator: " "))
