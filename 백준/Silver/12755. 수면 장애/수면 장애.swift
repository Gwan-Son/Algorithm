import Foundation

var N = Int(readLine()!)!
var minus = 9
var divisor = 1
var value = 0

while minus < N && N - (minus * divisor) > 0 {
    N -= minus * divisor
    minus *= 10
    divisor += 1
    value += minus
}

minus /= 10
value = value / 10 + (N - 1) / divisor + 1

print(String(value).map { $0 }[(N-1)%divisor])