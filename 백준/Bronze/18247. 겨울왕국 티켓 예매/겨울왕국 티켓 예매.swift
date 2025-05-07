import Foundation

let t = Int(readLine()!)!

for _ in 0..<t {
    let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
    if input[0] < 12 || input[1] < 4 {
        print("-1")
    } else {
        print(input[1] * 11 + 4)
    }
}