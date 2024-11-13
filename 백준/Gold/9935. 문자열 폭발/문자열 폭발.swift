import Foundation

let s = readLine()!
let explodingWord = readLine()!
let explodingWordLength = explodingWord.count
var result: [Character] = []

for i in s {
    result.append(i)
    if i == explodingWord.last && result.count >= explodingWordLength && String(result[result.count - explodingWordLength..<result.count]) == explodingWord {
        result.removeLast(explodingWordLength)
    }
}

print(result.isEmpty ? "FRULA" : String(result))
