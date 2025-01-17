import Foundation

var answer = 0
for _ in 0..<4 {
    answer += Int(readLine()!)!
}
print(answer / 60)
print(answer % 60)
