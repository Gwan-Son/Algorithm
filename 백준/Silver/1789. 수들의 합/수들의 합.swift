import Foundation

let S = Int(readLine()!)!
var i = 1
var sum = 0
while true {
    if S == sum {
        i -= 1
        break
    } else if S < sum {
        i -= 2
        break
    }
    sum += i
    i += 1
}
print(i)
