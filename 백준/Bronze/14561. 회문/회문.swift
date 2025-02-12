import Foundation

let t = Int(readLine()!)!

for _ in 0..<t {
    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    let A = input[0]; let n = input[1]
    let s = String(A, radix: n)
    
    var isGood = false
    let s1 = s.prefix(s.count/2)
    let s2 = s.suffix(s.count/2)
    if s1 == Substring(s2.reversed()) {
        isGood = true
    }
    isGood ? print(1) : print(0)
}