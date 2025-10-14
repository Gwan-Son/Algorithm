import Foundation

let n = Int(readLine()!)!

var people = [(String, Int)]()

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{ String($0) }
    people.append((input[0], Int(input[1])!))
}

people.sort{ $0.1 == $1.1 ? $0.0 < $1.0 : $0.1 > $1.1 }
print(people[0].0)