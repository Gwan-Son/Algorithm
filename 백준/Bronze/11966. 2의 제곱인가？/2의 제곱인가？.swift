import Foundation

var n = Int(readLine()!)!

while n.isMultiple(of: 2) {
    n = n / 2
}

if n == 1 {
    print(1)
} else {
    print(0)
}
