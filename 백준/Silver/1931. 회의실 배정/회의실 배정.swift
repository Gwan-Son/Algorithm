import Foundation

struct Meeting: Comparable {
    let start: Int
    let end: Int
    
    static func < (lhs: Meeting, rhs: Meeting) -> Bool {
        if lhs.end == rhs.end {
            return lhs.start < rhs.start
        }
        return lhs.end < rhs.end
    }
}

let N = Int(readLine()!)!
var meetings = [Meeting]()

for _ in 0..<N {
    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    meetings.append(Meeting(start: input[0], end: input[1]))
}

meetings.sort()

var count = 0
var lastEndTime = 0

for meeting in meetings {
    if meeting.start >= lastEndTime {
        count += 1
        lastEndTime = meeting.end
    }
}

print(count)