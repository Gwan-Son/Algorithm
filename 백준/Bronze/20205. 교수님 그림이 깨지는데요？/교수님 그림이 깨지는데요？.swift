import Foundation

let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
let n = input[0], k = input[1]
var arr = [[Int]]()

for _ in 0..<n {
    arr.append(readLine()!.split(separator: " ").map{ Int(String($0))! })
}

var result = [[Int]]()

for i in 0..<n {
    var temp = [Int]()
    for j in 0..<n {
        for _ in 0..<k {
            temp.append(arr[i][j])
        }
    }
    for _ in 0..<k {
        result.append(temp)
    }
}

result.forEach{
    print($0.map{String($0)}.joined(separator: " "))
}
