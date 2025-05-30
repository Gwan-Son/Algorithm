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

let n = fIO.readInt()

var arr = [Int]()

for _ in 0..<n {
    arr.append(fIO.readInt())
}

let m = fIO.readInt()

var dp = [[Bool]](repeating: [Bool](repeating: false, count: n), count: n)

for i in 0..<n {
    dp[i][i] = true
}

for i in 0..<(n - 1) {
    if arr[i] == arr[i + 1] {
        dp[i][i + 1] = true
    }
}

for i in 3...n {
    for j in 0...(n - i) {
        let k = j + i - 1
        if arr[j] == arr[k] && dp[j + 1][k - 1] {
            dp[j][k] = true
        }
    }
}

var answer = ""

for _ in 0..<m {
    let a = fIO.readInt()
    let b = fIO.readInt()
    dp[a - 1][b - 1] ? (answer += "1\n") : (answer += "0\n")
}

print(answer)
