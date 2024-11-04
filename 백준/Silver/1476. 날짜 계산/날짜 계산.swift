import Foundation

let input = readLine()!.split(separator: " ").map{ Int($0)! }

var answer = 1
while true {
    if (answer - input[0]) % 15 == 0 && (answer - input[1]) % 28 == 0 && (answer - input[2]) % 19 == 0 {
        break
    }
    answer += 1
}

print(answer)
