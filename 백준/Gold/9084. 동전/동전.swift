import Foundation

let T = Int(readLine()!)!

for _ in 0..<T {
    let coins = Int(readLine()!)!
    let coin = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let M = Int(readLine()!)!
    var dp = [Int](repeating: 0, count: M + 1)
    dp[0] = 1
    for i in 0..<coins{
        for j in stride(from: coin[i], through: M, by: 1){
            
            if dp[j] + dp[j - coin[i]] >= Int(pow(2.0, 31.0)){
                dp[j] = 0
            }else{
                dp[j] += dp[j - coin[i]]
            }
        }
    }
    print(dp[M])
}
