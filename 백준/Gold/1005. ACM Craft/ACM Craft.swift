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

let t = fIO.readInt()
var n = 0, k = 0
var dp: [Int64] = [Int64](repeating: -1, count: 1001)
var visited: [[Bool]] = [[Bool]](repeating: [Bool](repeating: false, count: 1001), count: 1001)
var cost: [Int64] = [Int64](repeating: 0, count: 1001)

func solve(_ a: Int) -> Int64 {
    if dp[a] != -1 { return dp[a] }
    var result: Int64 = cost[a]
    for i in 1...n {
        if !visited[i][a] { continue }
        result = max(result, solve(i) + cost[a])
    }
    dp[a] = result
    return result
}

for _ in 0..<t {
    dp = [Int64](repeating: -1, count: 1001)
	visited = [[Bool]](repeating: [Bool](repeating: false, count: 1001), count: 1001)

    n = fIO.readInt()
    k = fIO.readInt()

    for i in 1...n {
        cost[i] = Int64(fIO.readInt())
    }
    for _ in 0..<k {
        let x = fIO.readInt()
        let y = fIO.readInt()
        visited[x][y] = true
    }
    let dest = fIO.readInt()
    print(solve(dest))
}

