import Foundation

let t = Int(readLine()!)!

for _ in 0..<t {
    let n = Int(readLine()!)!
    let a = sqrt(Double(n))
    
    if a == floor(a) {
        let reverseN = Int(String(String(n).reversed()))!
        let revA = sqrt(Double(reverseN))
        if revA == floor(revA) {
            print("YES")
        } else {
            print("NO")
        }
    } else {
        print("NO")
    }
}
