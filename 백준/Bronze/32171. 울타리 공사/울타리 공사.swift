import Foundation

let n = Int(readLine()!)!

var minX = Int.max
var maxX = Int.min
var minY = Int.max
var maxY = Int.min

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
	let x1 = input[0], y1 = input[1], x2 = input[2], y2 = input[3]

    minX = min(minX, x1, x2)
    maxX = max(maxX, x1, x2)
    minY = min(minY, y1, y2)
    maxY = max(maxY, y1, y2)

	let result = (abs(minX - maxX) + abs(minY - maxY)) * 2
    print(result)
}