import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0]
let M = input[1]

var nameDict: [String: Int] = [:]
var numberDict: [Int: String] = [:]

for i in 1...N {
    let name = readLine()!
    nameDict[name] = i
    numberDict[i] = name
}

for _ in 0..<M {
    let name = readLine()!
    if let number = Int(name) {
        print(numberDict[number]!)
    } else {
        print(nameDict[name]!)
    }
}
