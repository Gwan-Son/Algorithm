import Foundation

let n = Int(readLine()!)!

let arr = readLine()!.split(separator: " ").map{ Int(String($0))! }
var count = 0
var currentMilk = -1

for i in 0..<n {
    if arr[i] == currentMilk + 1 {
        currentMilk = arr[i]
        count += 1
    } else if currentMilk == 2 && arr[i] == 0 {
        currentMilk = arr[i]
        count += 1
    } else {
        continue
    }
}

print(count)
