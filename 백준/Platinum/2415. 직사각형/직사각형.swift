import Foundation

struct MapKey: Hashable {
    let dx: Int64
    let dy: Int64
    let d: Int64
}

let N = Int(readLine()!)!
var P = [[Int64]]()
var ans: Int64 = 0
var mp = [MapKey: (Int64, Int64)]()

for _ in 0..<N {
    let input = readLine()!.split(separator: " ").map { Int64($0)! }
    P.append(input)
}

for i in 0..<N {
    for j in i+1..<N {
        var dx = P[i][0] - P[j][0]
        var dy = P[i][1] - P[j][1]

        if dx == 0 || dx * dy < 0 { continue }

        dx = abs(dx)
        dy = abs(dy)

        let D = min(dx * P[i][0] + dy * P[i][1], dx * P[j][0] + dy * P[j][1])
        let DD = dy * P[i][0] - dx * P[i][1]
        let key = MapKey(dx: dx, dy: dy, d: D)

        if let pp = mp[key] {
            mp[key] = (max(pp.0, DD), min(pp.1, DD))
        } else {
            mp[key] = (DD, DD)
        }
    }
}

for (_, value) in mp {
    ans = max(ans, value.0 - value.1)
}

print(ans)