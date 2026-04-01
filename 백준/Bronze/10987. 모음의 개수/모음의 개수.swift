import Foundation 

let arr = ["a", "e", "i", "o", "u"]

let str = readLine()!.map{ String($0) }
var count = 0

for i in 0..<str.count {
    if arr.contains(str[i]) {
        count += 1
    }
}

print(count)