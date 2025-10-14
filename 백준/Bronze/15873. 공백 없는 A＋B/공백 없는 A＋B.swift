import Foundation

var input = readLine()!

if input.count == 4 {
    print(20)
} else if input.count == 3 {
    print(input.map{ Int(String($0))! }.reduce(0, +) + 9)
} else {
    print(input.map{ Int(String($0))! }.reduce(0, +))
}