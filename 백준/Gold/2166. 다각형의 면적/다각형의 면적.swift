import Foundation

if let n = Int(readLine()!) {
    var points: [(x: Double, y: Double)] = []
    for _ in 0..<n {
        let point = readLine()!.split(separator: " ").map { Double(String($0))! }
        points.append((point[0], point[1]))
    }
    var sum: Double = 0
    for i in 0..<n {
        let j = (i + 1) % n
        sum += points[i].x * points[j].y - points[j].x * points[i].y
    }

    let area = abs(sum) / 2.0
    print(String(format: "%.1f", area))
}