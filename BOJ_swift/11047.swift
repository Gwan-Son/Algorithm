import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0]
var K = input[1]

var coins: [Int] = []
for _ in 0..<N {
    coins.append(Int(readLine()!)!)
}
coins.sort(by: ){ $0 > $1 }

var cnt = 0
for coin in coins {
    if K == 0 { break }
    cnt += K / coin
    K %= coin
}
print(cnt)
