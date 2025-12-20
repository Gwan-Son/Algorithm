import Foundation

let n = Int(readLine()!)!

var result = 0

for i in 1...n {
    if n % i == 0 {
        result += i
    }
}

print((result * 5) - 24)
