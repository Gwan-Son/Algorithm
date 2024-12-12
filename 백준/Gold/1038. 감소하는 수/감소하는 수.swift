import Foundation

let N = Int(readLine()!)!

var arr = [[Int]]()
arr.append([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])

if N > 1022 {
    print(-1)
    exit(0)
}

var count = 9
var i = 0

while count <= N {
    var minArr = [Int]()
    for j in arr[i] {
        let str = String(j)
        let num = Int(String(str[str.startIndex]))!
        if num < 9 {
            for k in num+1...9 {
                minArr.append(Int(String(k) + String(j))!)
            }
        }
    }
    if minArr.isEmpty {
        break
    }
    i += 1
    arr.append(minArr.sorted(by: <))
    count += minArr.count
}

print(arr.flatMap{$0}[N])
