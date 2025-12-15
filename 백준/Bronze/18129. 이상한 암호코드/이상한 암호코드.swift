import Foundation

let input = readLine()!.split(separator: " ").map{ String($0) }

var str = input[0].map{ String($0).uppercased() }
let n = Int(input[1])!

var result = ""

var temp = str.removeFirst()
var count = 1

while !str.isEmpty {
    let next = str.removeFirst()
    
    if temp == next {
        count += 1
    } else {
        str.removeAll{ $0 == temp }
        temp = next
        if count >= n {
            result += "1"
        } else {
            result += "0"
        }
        count = 1
    }
}

if count >= n {
    result += "1"
} else {
    result += "0"
}

print(result)
