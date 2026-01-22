import Foundation

let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
let n = input[0], k = input[1]

var score = readLine()!.split(separator: " ").map{ Int(String($0))! }

for i in 0..<k {
    score[i] = score[i] * 100 / n
    
    switch score[i] {
    case 97...100:
        score[i] = 9
    case 90...96:
        score[i] = 8
    case 78...89:
        score[i] = 7
    case 61...77:
        score[i] = 6
    case 41...60:
        score[i] = 5
    case 24...40:
        score[i] = 4
    case 12...23:
        score[i] = 3
    case 5...11:
        score[i] = 2
    default:
        score[i] = 1
    }
}

print(score.map{ String($0) }.joined(separator: " "))
