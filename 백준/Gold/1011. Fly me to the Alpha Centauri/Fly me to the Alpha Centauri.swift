import Foundation

let T = Int(readLine()!)!


func checkStep(_ distance: Int) -> Int64 {
    var answer: Int64 = 0
    if distance <= 3{
        return Int64(distance)
    }
    
    for i in 1...Int.max {
        if i * (i - 1) < distance && distance <= i * i {
            answer = 2 * Int64(i) - 1
            break
        }
        if i * i < distance && distance <= i * (i + 1) {
            answer = 2 * Int64(i)
            break
        }
    }
    
    return answer
}

for _ in 0..<T {
    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    let distance = input[1] - input[0]
    print(checkStep(distance))
}

