import Foundation

let n = Int(readLine()!)!

var arr = [Int]()

for _ in 0..<n {
    arr.append(Int(readLine()!)!)
}

let diff = arr[1] - arr[0]

if arr[2] - arr[1] == diff {
    print(arr.last! + diff)
} else {
    print(arr.last! * (arr[1] / arr[0]))
}
