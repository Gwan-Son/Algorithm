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

for _ in 0..<t {
    let n = fIO.readInt()
    let m = fIO.readInt()

    var arr = [[Int]](repeating: [Int](repeating: 0, count: m), count: n)
    for i in 0..<n {
        for j in 0..<m {
            arr[i][j] = fIO.readInt()
        }
    }

    var isSorted = true

    outerLoop: for i in 0..<n-1 {
        for j in 0..<m-1 {
            // (i,j), (i,j+1), (i+1,j), (i+1,j+1) 확인
            if arr[i][j] + arr[i+1][j+1] > arr[i][j+1] + arr[i+1][j] {
                isSorted = false
                break outerLoop
            }
        }
    }

    print(isSorted ? "YES" : "NO")
}
