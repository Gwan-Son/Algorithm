import Foundation

let n = Int(readLine()!)!

var eggDurability: [Int] = []
var eggWeight: [Int] = []
var brokenEgg = 0

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
    eggDurability.append(input[0])
    eggWeight.append(input[1])
}

func checkBroken(_ eggDur: [Int]) {
    brokenEgg = max(brokenEgg, eggDur.filter{ $0 <= 0 }.count)
}

func unbrokenEggs(_ idx: Int, _ eggDur: [Int]) -> Bool {
    if idx >= n {
        return true
    }
    else {
        for i in 0..<eggDur.count {
            if i != idx && eggDur[i] > 0 {
                return false
            }
        }
    }
    return true
}

func dfs(_ idx: Int, _ eggDur: [Int]) {
    if idx == n || unbrokenEggs(idx, eggDur) {
        checkBroken(eggDur)
        return
    }
    if eggDur[idx] <= 0 {
        dfs(idx + 1, eggDur)
    } else {
        for i in 0..<n {
            if i != idx && eggDur[i] > 0 {
                var eggCopy = eggDur
                eggCopy[i] -= eggWeight[idx]
                eggCopy[idx] -= eggWeight[i]
                dfs(idx + 1, eggCopy)
            }
        }
    }

}

dfs(0, eggDurability)

print(brokenEgg)