import Foundation

let input = readLine()!.split(separator: " ").map{ Int($0)! }
let n = input[0]
var b = input[1]

var arr = [[Int]](repeating: [], count: n)
var result = [[Int]](repeating: [Int](repeating: 0, count: n), count: n)
var temp = [[Int]](repeating: [Int](repeating: 0, count: n), count: n)

for i in 0..<n {
    arr[i] = readLine()!.split(separator: " ").map{ Int($0)! }
    result[i][i] = 1
}

func multiply(_ x: inout [[Int]], _ y: [[Int]]){
    for i in 0..<n {
        for j in 0..<n {
            temp[i][j] = 0
            for k in 0..<n {
                temp[i][j] += x[i][k] * y[k][j]
            }
            temp[i][j] %= 1000
        }
    }
    for i in 0..<n {
        for j in 0..<n {
            x[i][j] = temp[i][j]
        }
    }
}


while b > 0 {
    if b % 2 == 1 {
        multiply(&result, arr)
    }
    multiply(&arr, arr)
    b /= 2
}

result.forEach {
    $0.forEach {
        print($0,terminator: " ")
    }
    print()
}
