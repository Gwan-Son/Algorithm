import Foundation

let input = readLine()!.split(separator: " ").map{ String($0) }
var A = input[0]
var B = input[1]

var diff = B.count - A.count

if diff > 0 {
    let a = Array(A)
    let b = Array(B)
    var startIdx = 0
    var count = 51
    while diff >= 0 {
        var tempCount = 0
        for i in 0..<A.count {
            if a[i] != b[i + startIdx] {
                tempCount += 1
            }
        }
        count = min(tempCount, count)
        startIdx += 1
        diff -= 1
    }
    print(count)
} else {
    var count = 0
    for i in B.indices {
        if A[i] != B[i] { count += 1 }
    }
    print(count)
}
