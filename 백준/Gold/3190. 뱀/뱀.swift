import Foundation

let n = Int(readLine()!)!
let k = Int(readLine()!)!

var apples = [(Int, Int)]()
for _ in 0..<k {
    let apple = readLine()!.split(separator: " ").map{ Int(String($0))! }
    apples.append((apple[0], apple[1]))
}

let l = Int(readLine()!)!
var moves = [(Int, String)]()
for _ in 0..<l {
    let move = readLine()!.split(separator: " ").map{ String($0) }
    moves.append((Int(move[0])!, move[1]))
}

let directions = [(0, 1), (1, 0), (0, -1), (-1, 0)]
var dir = 0
var time = 0
var snake = [(Int, Int)]()
snake.append((1, 1))

while true {
	time += 1
    let cur = snake.first!

    let next = (cur.0 + directions[dir].0, cur.1 + directions[dir].1)
    if !(1...n).contains(next.0) || !(1...n).contains(next.1) || snake.contains(where: {$0 == next}) {
        break
    }

    if apples.contains(where: { $0 == next }) {
        apples.removeAll(where: { $0 == next })
        snake.insert(next, at: 0)
    } else {
        snake.insert(next, at: 0)
        snake.removeLast()
    }
    if !moves.isEmpty {
        if moves.first!.0 == time {
            let changeDir = moves.first!.1
            if changeDir == "L" {
                dir = dir == 0 ? 3 : dir - 1
            } else {
                dir = (dir + 1) % 4
            }
            moves.removeFirst()
        }
    }
}

print(time)