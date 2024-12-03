import Foundation

let L = Int(readLine()!)!
var arr: [Int] = readLine()!.split(separator: " ").map { Int(String($0))! }



let N = Int(readLine()!)!
if arr.contains(N) {
    print(0)
    exit(0)
}
arr.append(N)
arr.sort()

var answer = 0
var start = 0
var end = 0

if arr.firstIndex(of: N)! != 0 {
    start = arr[arr.firstIndex(of: N)! - 1] + 1
    end = arr[arr.firstIndex(of: N)! + 1] - 1
} else {
    start = 1
    end = arr[1] - 1
}


var middle = N
while start <= N {
    if start < middle {
        answer += end - middle + 1
        start += 1
    } else {
        answer += end - start
        start += 1
    }
}

print(answer)
