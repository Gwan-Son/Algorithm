import Foundation

let n = Int(readLine()!)!

if n == 0 {
    print(0)
    exit(0)
}

var arr = [Int](repeating: 0, count: n + 1)
var setArr = Set<Int>()
setArr.insert(0)

for i in 1...n {
    let minus = arr[i - 1] - i
    let plus = arr[i - 1] + i
    
    if minus < 0 || setArr.contains(minus) {
        arr[i] = plus
        setArr.insert(plus)
    } else {
        arr[i] = minus
        setArr.insert(minus)
    }
}

print(arr[n])
