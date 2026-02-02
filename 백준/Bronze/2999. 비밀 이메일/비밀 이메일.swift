import Foundation

let str = readLine()!.map{ String($0) }
let n = str.count

var r = 1
var c = n

for i in 1...Int(Double(n).squareRoot()) {
    if n % i == 0 {
        r = i
        c = n / i
    }
}

var arr = [[String]](repeating: [String](repeating: "", count: c), count: r)

var index = 0

for i in 0..<c {
    for j in 0..<r {
        arr[j][i] = str[index]
        index += 1
    }
}

var result = ""

for i in 0..<r {
    result += arr[i].joined()
}

print(result)
