import Foundation

let arr = readLine()!.split(separator: " ").map{ Int(String($0))! }
let n = Int(readLine()!)!

var result = 0
for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{ Double(String($0))! }
	let b = Int(input[0])
    let l = input[1]
    let s = Int(input[2])

    if l >= 2.0 && s >= 17 {
        result += arr[b]
    }
}

print(result)
