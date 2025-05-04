import Foundation

let n = Int(readLine()!)!

var sum = 0
for i in 1...n {
    sum += i
}
print(sum)
print(sum * sum)
sum = 0
for i in 1...n {
    sum += i * i * i
}
print(sum)
