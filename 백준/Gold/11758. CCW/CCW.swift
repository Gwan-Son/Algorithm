import Foundation

var points: [(x: Int, y: Int)] = []

for _ in 0..<3 {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    points.append((input[0], input[1]))
}

func ccw(_ p1: (x: Int, y: Int), _ p2: (x: Int, y: Int), _ p3: (x: Int, y: Int)) {
    let result = (p2.x - p1.x) * (p3.y - p1.y) - (p3.x - p1.x) * (p2.y - p1.y)
    if result == 0 {
        print(0)
    } else if result > 0 {
        print(1)
    } else {
        print(-1)
    }
}

ccw(points[0], points[1], points[2])

