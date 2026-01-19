import Foundation

var arr = [Int]()
var average = 0

for _ in 0..<5 {
    let input = Int(readLine()!)!
    arr.append(input)
    average += input
}

arr.sort()

print(average / 5)
print(arr[2])
