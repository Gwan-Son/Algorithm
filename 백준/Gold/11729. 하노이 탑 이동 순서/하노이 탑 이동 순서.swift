import Foundation

let N = Int(readLine()!)!

var hanoi = [[Int]](repeating: [Int](), count: 3)
var count = 0
var result = ""

for i in (1...N).reversed() {
    hanoi[0].append(i)
}

func moveHanoi(from: Int, to: Int, mid: Int, n: Int) {
    if n == 1 {
        count += 1
        result += "\(from + 1) \(to + 1)\n"
        hanoi[to].append(hanoi[from].popLast()!)
    } else {
        moveHanoi(from: from, to: mid, mid: to, n: n - 1)
        moveHanoi(from: from, to: to, mid: mid, n: 1)
        moveHanoi(from: mid, to: to, mid: from, n: n - 1)
    }
}

moveHanoi(from: 0, to: 2, mid: 1, n: N)
print(count)
print(result)
