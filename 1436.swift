import Foundation

let input = Int(readLine()!)! // N

var numbering: Int = 0
var name: Int = 0

while numbering != input {
    var tmp = name
    while tmp >= 666 {
        if tmp % 1000 == 666 {
            numbering += 1
            break
        } else {
            tmp /= 10
        }
    }
    name += 1
}
print(name - 1)
