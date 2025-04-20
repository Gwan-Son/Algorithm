let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
let n = input[0], p = input[1], q = input[2]
var dp: [Int : Int] = [0 : 1]

func solve(_ num: Int) -> Int {
    if dp[num] != nil {
        return dp[num]!
    }
    dp[num] = solve(num / p) + solve(num / q)
    return dp[num]!
}

print(solve(n))