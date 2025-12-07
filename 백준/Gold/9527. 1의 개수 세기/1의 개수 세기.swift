import Foundation

let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
let a = input[0], b = input[1]

func onesUpTo(_ n: Int) -> Int64 {
    if n < 0 { return 0 }
    var total: Int64 = 0
    var k = 0
    while (1 << k) <= n {
        let period = 1 << (k + 1)
        let onesPerPeriod = 1 << k
        let countNumbers = n + 1
        let fullCycles = countNumbers / period
        let remainder = countNumbers % period
        let add = Int64(fullCycles * onesPerPeriod + max(0, remainder - onesPerPeriod))
        total += add
        k += 1
    }
    return total
}

let result = onesUpTo(b) - onesUpTo(a - 1)
print(result)
