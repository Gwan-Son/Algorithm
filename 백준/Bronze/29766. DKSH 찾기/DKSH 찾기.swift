import Foundation

let str = readLine()!.map{ String($0) }
var count = 0

for i in 0..<str.count {
    if str[i] == "D" && i + 3 < str.count {
        if str[i...i+3].joined() == "DKSH" {
            count += 1
        }
    }
}

print(count)
