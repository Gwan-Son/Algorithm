import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0]
let M = input[1]

var noHeard = Set<String>()
var noSeen = Set<String>()

for _ in 0..<N {
    noHeard.insert(readLine()!)
}

for _ in 0..<M {
    noSeen.insert(readLine()!)
}

let didHearSee = noHeard.intersection(noSeen).sorted()

print(didHearSee.count)
didHearSee.forEach { print($0) }
