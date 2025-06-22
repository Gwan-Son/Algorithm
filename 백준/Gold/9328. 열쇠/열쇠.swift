import Foundation

struct Point {
    let x: Int
    let y: Int
}

func solution() {
    let t = Int(readLine()!)!

    for _ in 0..<t {
        let hw = readLine()!.split(separator: " ").map{ Int(String($0))! }
        let h = hw[0], w = hw[1]

        var building = [[Character]]()
        for _ in 0..<h {
            building.append(Array(readLine()!))
        }

        let keyInput = readLine()!
        var keys = Set<Character>()
        if keyInput != "0" {
            for key in keyInput {
                keys.insert(key)
            }
        }

		print(findMaxDoc(building: building, h: h, w: w, initialKeys: keys))
    }
}

func findMaxDoc(building: [[Character]], h: Int, w: Int, initialKeys: Set<Character>) -> Int {
	let dx = [-1, 1, 0, 0]
    let dy = [0, 0, -1 , 1]

	var keys = initialKeys
    var visited = [[Bool]](repeating: [Bool](repeating: false, count: w), count: h)
    var documents = [(Int, Int)]()

    func bfs() -> Bool {
		var queue = [Point]()
        var newKeyFound = false

        for i in 0..<h {
            for j in 0..<w {
                if (i == 0 || i == h - 1 || j == 0 || j == w - 1) && !visited[i][j] && building[i][j] != "*" {
                    if canPass(building[i][j], keys) {
                        queue.append(Point(x: i, y: j))
                    }

                }
            }
        }

        while !queue.isEmpty {
            let current = queue.removeFirst()
            let x = current.x, y = current.y

            if visited[x][y] {
                continue
            }

            visited[x][y] = true
            let cell = building[x][y]

            if cell == "$" {
                if !documents.contains(where: { $0.0 == x && $0.1 == y }) {
                    documents.append((x, y))
                }
            } else if cell.isLowercase && cell.isLetter {
                if !keys.contains(cell) {
                    keys.insert(cell)
                    newKeyFound = true
                }
            }

            for i in 0..<4 {
                let nx = x + dx[i]
                let ny = y + dy[i]

                if nx >= 0 && nx < h && ny >= 0 && ny < w &&
                    !visited[nx][ny] && building[nx][ny] != "*" {
                    if canPass(building[nx][ny], keys) {
                        queue.append(Point(x: nx, y: ny))
                    }
                }
            }
        }

        return newKeyFound
    }

    repeat {
        visited = [[Bool]](repeating: [Bool](repeating: false, count: w), count: h)
    } while bfs()


    return documents.count
}

func canPass(_ cell: Character, _ keys: Set<Character>) -> Bool {
    if cell == "." || cell == "$" {
        return true
    }
    if cell.isLowercase && cell.isLetter {
        return true
    }
    if cell.isUppercase && cell.isLetter {
        return keys.contains(cell.lowercased().first!)
    }
    return false
}

solution()