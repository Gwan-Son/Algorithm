import Foundation

func solution(_ n: Int, _ words: [String]) -> [Int] {
    
    var answer: [Int] = []
    var seenWords: Set<String> = []
    var failedIndex: Int = 0
    
    for i in 0..<words.count {
        let currentWord = words[i]
        
        if seenWords.contains(currentWord) {
            failedIndex = i + 1
            break
        }
        seenWords.insert(currentWord)
        
        if i < words.count - 1 {
            let nextWord = words[i + 1]
            if currentWord.last != nextWord.first {
                failedIndex = i + 2
                break
            }
        }
    }
    
    if failedIndex != 0 {
        if failedIndex % n == 0 {
            answer.append(n)
            answer.append(failedIndex / n)
        } else {
            answer.append(failedIndex % n)
            answer.append((failedIndex / n) + 1)
        }
    } else {
        answer.append(0)
        answer.append(0)
    }
    
    return answer
}
