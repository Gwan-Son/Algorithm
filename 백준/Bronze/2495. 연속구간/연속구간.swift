import Foundation

for _ in 0..<3 {
    let input = readLine()!.map{ String($0) }
    var maxLength = 1
    var prev = ""
    var temp = 1
    for i in 0..<input.count {
        if prev == input[i] {
            temp += 1
            maxLength = max(maxLength, temp)
        } else {
            temp = 1
            prev = input[i]
        }
    }
    print(maxLength)
}
