import Foundation

let N = Int(readLine()!)!
var origin = readLine()!.split(separator: " ").map{ Int(String($0))! }
origin.sort()

var result = 0

func calcArr(_ arr: [Int]) {
    var sum = 0
    for i in 0..<arr.count - 1 {
        sum += abs(origin[arr[i]] - origin[arr[i + 1]])
    }
    result = max(result, sum)
}

func mkArr(_ arr: [Int]) {
    if arr.count == N {
        calcArr(arr)
    }
    
    for i in 0..<origin.count {
        if !arr.contains(i) {
            mkArr(arr + [i])
        }
    }
}
mkArr([])
print(result)
