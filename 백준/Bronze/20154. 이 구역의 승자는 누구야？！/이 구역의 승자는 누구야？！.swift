import Foundation

let str = readLine()!.map{ String($0) }

let nums = [ 3, 2, 1, 2, 3, 3, 3, 3, 1, 1, 3, 1, 3, 3, 1, 2, 2, 2, 1, 2, 1, 1, 2, 2, 2, 1 ]

var result = 0

for i in 0..<str.count {
    let idx = UnicodeScalar(str[i])!.value
    result += nums[Int(idx) - 65]
    result %= 10
}


if result % 2 == 0 {
    print("You're the winner?")
} else {
    print("I'm a winner!")
}
