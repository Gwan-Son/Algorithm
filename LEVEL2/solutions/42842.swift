import Foundation

func solution(_ brown:Int, _ yellow:Int) -> [Int] {
    var answer: [Int] = []
    var sum = (brown - 4) / 2
    var yellow_measure: [Int] = []
    
    for i in 1...yellow {
        if yellow % i == 0 {
            yellow_measure.append(i)
        }
    }
    
    for i in yellow_measure {
        var temp = yellow / i
        if i * temp == yellow, i + temp == sum {
            answer.append(temp + 2)
            answer.append(i + 2)
            break
        }
    }
    
    return answer
}
