import Foundation

let n = Int(readLine()!)!
let arr = readLine()!.map{ Int(String($0))! }

var even = 0
var odd = 0

arr.forEach {
    if $0 % 2 == 0 {
        even += 1
    } else {
        odd += 1
    }
}

if even == odd {
    print(-1)
} else if even > odd {
    print(0)
} else {
    print(1)
}