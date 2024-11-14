//Union-Find
import Foundation

let input = readLine()!.split(separator: " ").map{ Int($0)! }
let n = input[0]
let m = input[1]

var person = [Int](0...n)

let truthPerson = readLine()!.split(separator: " ").map{ Int($0)! }

for i in stride(from: 1, through: truthPerson[0], by: 1) {
    person[truthPerson[i]] = 0
}

func Find(_ x: Int) -> Int {
    if x == person[x] { return x }
    person[x] = Find(person[x])
    return person[x]
}

func Union(_ a: Int, _ b: Int) {
    let a = Find(a)
    let b = Find(b)
    if a != b {
        if a > b {
            person[a] = b
        } else {
            person[b] = a
        }
    }
}

var party = [[Int]]()

for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    party.append(input)
    if input[0] != 1 {
        for i in stride(from: 2, through: input[0], by: 1) {
            Union(input[1], input[i])
        }
    }
}

var answer = m

for i in 0..<m {
    for j in stride(from: 1, through: party[i][0], by: 1) {
        if Find(person[party[i][j]]) == 0 {
            answer -= 1
            break
        }
    }
}

print(answer)
