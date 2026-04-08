import Foundation

let n = Int(readLine()!)!
var result = ""

for _ in 0..<n {
    let str = readLine()!.map{ String($0) }
    if str.contains("S") {
        result = str.joined()
    }
}

print(result)
