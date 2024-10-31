import Foundation

let T = Int(readLine()!)!

var result = ""
for _ in 0..<T {
    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    let xy1 = (input[0], input[1])
    let r1 = input[2]
    let xy2 = (input[3], input[4])
    let r2 = input[5]
    
    let distance: Double = sqrt(Double((xy1.0 - xy2.0) * (xy1.0 - xy2.0) + (xy1.1 - xy2.1) * (xy1.1 - xy2.1)))
    let subtract: Double = Double(abs(r1 - r2))
    
    if distance == 0 && r1 == r2 {
        result += "-1\n"
    } else if distance > subtract && distance < Double(r1 + r2) {
        result += "2\n"
    } else if distance == Double(r1 + r2) || distance == subtract {
        result += "1\n"
    } else {
        result += "0\n"
    }
}

print(result)
