import Foundation

let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
let r = input[0], c = input[1]

var card = [[String]]()

for _ in 0..<r {
    var line = readLine()!.map{ String($0) }
    line += line.reversed()
    card.append(line)
}

for i in stride(from: r - 1, through: 0, by: -1) {
    card.append(card[i])
}
let change = readLine()!.split(separator: " ").map{ Int(String($0))! }
let cR = change[0] - 1, cC = change[1] - 1

if card[cR][cC] == "#" {
    card[cR][cC] = "."
} else {
    card[cR][cC] = "#"
}

card.forEach {
    print($0.joined())
}
