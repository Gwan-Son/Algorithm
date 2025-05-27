import Foundation

if let tc = Int(readLine()!) {
    for _ in 0..<tc {
        let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
        let n = input[0], m = input[1], w = input[2]
        var edges: [(Int, Int, Int)] = []

        for _ in 0..<m {
            let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
            let x = input[0], y = input[1], distance = input[2]
            edges.append((x, y, distance))
            edges.append((y, x, distance))
        }

        for _ in 0..<w {
            let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
            let x = input[0], y = input[1], distance = input[2]
            edges.append((x, y, -distance))
        }

        var distance = [Int](repeating: 123_456_789, count: n + 1)
        distance[0] = 0
        for i in 1...n {
            edges.append((0, i , 0))
        }

        // 벨만-포드
        for _ in 1...n {
            for (x, y, dist) in edges {
                if distance[y] > distance[x] + dist {
                    distance[y] = distance[x] + dist
                }
            }
        }

        var negCycle = false
        for (x, y, dist) in edges {
            if distance[y] > distance[x] + dist {
                negCycle = true
                break
            }
        }

        if negCycle {
            print("YES")
        } else {
            print("NO")
        }
    }
}