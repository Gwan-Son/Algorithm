import Foundation


final class FileIO {
    private let buffer:[UInt8]
    private var index: Int = 0

    init(fileHandle: FileHandle = FileHandle.standardInput) {
        
        buffer = Array(try! fileHandle.readToEnd()!)+[UInt8(0)] // 인덱스 범위 넘어가는 것 방지
    }

    @inline(__always) private func read() -> UInt8 {
        defer { index += 1 }

        return buffer[index]
    }

    @inline(__always) func readInt() -> Int {
        var sum = 0
        var now = read()
        var isPositive = true

        while now == 10
                || now == 32 { now = read() } // 공백과 줄바꿈 무시
        if now == 45 { isPositive.toggle(); now = read() } // 음수 처리
        while now >= 48, now <= 57 {
            sum = sum * 10 + Int(now-48)
            now = read()
        }

        return sum * (isPositive ? 1:-1)
    }

    @inline(__always) func readString() -> String {
        var now = read()

        while now == 10 || now == 32 { now = read() } // 공백과 줄바꿈 무시

        let beginIndex = index-1

        while now != 10,
              now != 32,
              now != 0 { now = read() }

        return String(bytes: Array(buffer[beginIndex..<(index-1)]), encoding: .ascii)!
    }

    @inline(__always) func readByteSequenceWithoutSpaceAndLineFeed() -> [UInt8] {
        var now = read()

        while now == 10 || now == 32 { now = read() } // 공백과 줄바꿈 무시

        let beginIndex = index-1

        while now != 10,
              now != 32,
              now != 0 { now = read() }

        return Array(buffer[beginIndex..<(index-1)])
    }
}
let fIO = FileIO()

let r = fIO.readInt()
let c = fIO.readInt()

let directions = [(1, 0), (-1, 0), (0, 1), (0, -1)]

var board = [[String]]()
var visited = [[Bool]](repeating: [Bool](repeating: false, count: c), count: r)

for _ in 0..<r {
    board.append(fIO.readString().map{ String($0) })
}
var sheep = 0
var wolf = 0

var tempSheep = 0
var tempWolf = 0

func dfs(_ x: Int, _ y: Int) {
    if x < 0 || x >= r || y < 0 || y >= c {
        return
    }
    
    visited[x][y] = true
    
    if board[x][y] == "v" {
        tempWolf += 1
    }
    
    if board[x][y] == "k" {
        tempSheep += 1
    }
    
    for direction in directions {
        let nextX = x + direction.0
        let nextY = y + direction.1
        
        if (0..<r) ~= nextX && (0..<c) ~= nextY {
            if board[nextX][nextY] != "#" && !visited[nextX][nextY] {
                dfs(nextX, nextY)
            }
        }
    }
}

for i in 0..<r {
    for j in 0..<c {
        if !visited[i][j] && board[i][j] != "#" {
            tempWolf = 0
            tempSheep = 0
            dfs(i, j)
            if tempWolf >= tempSheep {
                wolf += tempWolf
            } else {
                sheep += tempSheep
            }
        }
    }
}

print(sheep, wolf)
