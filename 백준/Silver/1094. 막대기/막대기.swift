import Foundation

var n = Int(readLine()!)!

var halfStick: Int = 32
var sticks: [Int] = [64]


while sticks.reduce(0, +) > n {
    halfStick = sticks.removeLast()
    halfStick /= 2
    sticks.append(halfStick)
    if sticks.reduce(0, +) >= n {
        continue
    } else {
        sticks.append(halfStick)
    }
}


print(sticks.count)
