import Foundation

let n = Int(readLine()!)!

var arr = readLine()!.split(separator: " ").map{ Int(String($0))! }

let maxValue = 1_000_000

var owner = [Int](repeating: 0, count: maxValue + 1)
for (idx, v) in arr.enumerated() {
    owner[v] = idx + 1
}

var score = [Int](repeating: 0, count: n + 1)

for i in 1...maxValue {
	let ox = owner[i]
    if ox == 0 { continue }
    var m = i * 2
    while m <= maxValue {
        let om = owner[m]
        if om != 0 {
            score[ox] += 1
            score[om] -= 1
        }
        m += i
    }
}

var output = String()
for i in 1...n {
    output += "\(score[i])"
    if i < n { output += " " }
}
print(output)
