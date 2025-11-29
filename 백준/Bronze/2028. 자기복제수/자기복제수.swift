import Foundation

let t = Int(readLine()!)!

for _ in 0..<t {
    let n = Int(readLine()!)!
    let powN = n * n
    let count = String(n).count
    var ten = 10
    for _ in 0..<count - 1 {
        ten *= 10
    }
    if powN % ten == n {
        print("YES")
    } else {
        print("NO")
    }
}
