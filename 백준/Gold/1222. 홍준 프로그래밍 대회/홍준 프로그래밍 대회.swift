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
var students = [Int]()
for _ in 0..<n {
    students.append(fIO.readInt())
}

let maxVal = students.max()!
var count = Array(repeating: 0, count: maxVal + 1)

// 각 학생 수의 빈도 계산
for student in students {
    count[student] += 1
}

var maxGroup = 0

// 에라토스테네스의 체 방식으로 배수 확인
for teamSize in 1...maxVal {
    var participatingSchools = 0

    // teamSize의 배수인 학생 수들을 모두 확인
    var multiple = teamSize
    while multiple <= maxVal {
        participatingSchools += count[multiple]
        multiple += teamSize
    }

    if participatingSchools >= 2 {
        maxGroup = max(maxGroup, teamSize * participatingSchools)
    }
}

print(maxGroup)
