import Foundation

let N = Int(readLine()!)!
var card: [Int] = readLine()!.split(separator: " ").map{ Int(String($0))! }
card.sort()
let M = Int(readLine()!)!
let numbers: [Int] = readLine()!.split(separator: " ").map{ Int(String($0))! }

var result = [Int]()

func binary_search(start: Int, end: Int, target: Int) -> Int {
    if start > end { return -1 }
    let mid = (start + end) / 2
    
    if card[mid] == target { return mid }
    else if card[mid] > target {
        return binary_search(start: start, end: mid - 1, target: target)
    } else {
        return binary_search(start: mid + 1, end: end, target: target)
    }
}

for number in numbers {
    if binary_search(start: 0, end: N - 1, target: number) == -1 {
        result.append(0)
    } else {
        result.append(1)
    }
}

print(result.compactMap{ String($0) }.joined(separator: " "))
