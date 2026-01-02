import Foundation

let input = readLine()!.split(separator: " ").map{ Double(String($0))! }

let seven = input[0] / input[1]

var minimumSamgak = seven

let n = Int(readLine()!)!

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{ Double(String($0))! }
    let temp = input[0] / input[1]
    
    minimumSamgak = min(minimumSamgak, temp)
}

print(round(minimumSamgak * 100000.0) / 100.0)
