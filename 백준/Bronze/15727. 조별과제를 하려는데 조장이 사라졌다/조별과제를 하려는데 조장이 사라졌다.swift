import Foundation

var n = Int(readLine()!)!

var result = n / 5

if n % 5 != 0 {
    result += 1
}

print(result)
