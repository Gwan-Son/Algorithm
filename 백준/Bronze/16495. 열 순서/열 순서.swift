import Foundation

let input = readLine()!.map{ String($0) }
var answer = 0

for (idx, element) in input.reversed().enumerated() {
    if idx == 0 {
        answer += Int(UnicodeScalar(element)!.value - 64)
    } else {
        answer += Int(UnicodeScalar(element)!.value - 64) * Int(pow(Double(26), Double(idx)))
    }
}
print(answer)