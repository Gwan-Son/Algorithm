import Foundation

let t = Int(readLine()!)!

let answers = [
    [0, 1, 2, 3],
    [0, 1, 4, 5],
    [0, 2, 4, 6],
    [1, 3, 5, 7],
    [2, 3, 6, 7],
    [4, 5, 6, 7]
]


for _ in 0..<t {
    let arr = readLine()!.split(separator: " ").map{ Int(String($0))! }.sorted()

    for answer in answers {
        if arr == answer {
            print("YES")
            break
        } else if answer == answers.last {
            print("NO")
        }
    }
}
