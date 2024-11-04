import Foundation

let m = Int(readLine()!)!
let n = Int(readLine()!)!

var sum = 0
var min = 0

for i in m...n {
    if sqrt(Double(i)) == Double(Int(sqrt(Double(i)))) {
        sum += i
        if min == 0 {
            min = i
        }
    }
}

if min == 0 && sum == 0 {
    print(-1)
} else {
    print(sum)
    print(min)
}
