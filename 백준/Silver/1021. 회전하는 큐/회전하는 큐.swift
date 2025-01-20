import Foundation

var answer = 0
let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
let N = input[0]
let M = input[1]

var check = readLine()!.split(separator: " ").map{ Int(String($0))! }
var arr = [Int](1...N)

while !check.isEmpty {
    if arr.first! == check.first! {
        arr.removeFirst()
        check.removeFirst()
        continue
    }
    
    let start = arr.firstIndex(of: check.first!)!
    let end = arr.count - arr.firstIndex(of: check.first!)!
    
    if start < end {
        arr.append(arr.removeFirst())
    } else {
        arr.insert(arr.removeLast(), at: 0)
    }
    
    answer += 1
}

print(answer)

