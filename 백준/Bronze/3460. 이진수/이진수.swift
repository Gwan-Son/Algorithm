import Foundation

let t = Int(readLine()!)!

for _ in 0..<t {
    let n = Int(readLine()!)!
    let bitStr = String(n, radix: 2).map{ String($0) }
    
    for (i, e) in bitStr.reversed().enumerated() {
        if e == "1" {
            print(i, terminator: " ")
        }
    }
    print()
}
