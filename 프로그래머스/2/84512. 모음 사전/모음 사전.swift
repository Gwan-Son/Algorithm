import Foundation

func solution(_ word:String) -> Int {
    var answer = 0
    let wordArray = Array(word)
    let letters: [Character] = ["A","E","I","O","U"]
    let count: [Int] = [781, 156, 31, 6, 1]
    
    for i in 0..<wordArray.count {
        let temp = letters.firstIndex(of: wordArray[i])!
        answer += count[i] * temp + 1
    }
    
    return answer
}