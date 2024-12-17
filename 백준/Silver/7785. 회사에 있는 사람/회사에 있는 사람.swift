import Foundation

let N = Int(readLine()!)!
var person: Set<String> = []

for _ in 1...N {
    let input = readLine()!.split(separator: " ").map{ String($0) }
    if input[1] == "enter" {
        person.insert(input[0])
    } else if input[1] == "leave" {
        person.remove(input[0])
    }
}

person.sorted(by: >).forEach { print($0) }
