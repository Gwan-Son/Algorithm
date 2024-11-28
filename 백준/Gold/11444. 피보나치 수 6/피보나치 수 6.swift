import Foundation

var n = Int(readLine()!)!

var fibonacci: [[Int64]] = [[1,1],[1,0]]
var result = [[Int64]](repeating: [Int64](repeating: 0, count: fibonacci.count), count: fibonacci.count)
var temp = [[Int64]](repeating: [Int64](repeating: 0, count: fibonacci.count), count: fibonacci.count)

for i in 0..<2 {
    result[i][i] = 1
}

func multiply(_ x: inout [[Int64]], _ y: [[Int64]]){
    for i in 0..<2 {
        for j in 0..<2 {
            temp[i][j] = 0
            for k in 0..<2 {
                temp[i][j] += x[i][k] * y[k][j]
            }
            temp[i][j] %= 1_000_000_007
        }
    }
    for i in 0..<2 {
        for j in 0..<2 {
            x[i][j] = temp[i][j]
        }
    }
}


while n > 0 {
    if n % 2 == 1 {
        multiply(&result, fibonacci)
    }
    multiply(&fibonacci, fibonacci)
    n /= 2
}

print(result[0][1])
