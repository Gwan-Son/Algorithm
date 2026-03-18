import Foundation

let arr = readLine()!.split(separator: " ").map{ Int(String($0))! }

var result = 1
var count = 0

for i in 0..<arr.count {
    if arr[i] % 2 != 0 {
        count += 1
        result *= arr[i]
    }
}

if count == 0 {
    for i in 0..<arr.count {
        result *= arr[i]
    }
    print(result)
} else {
    print(result)
}
