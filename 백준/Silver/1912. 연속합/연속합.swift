let N = Int(readLine()!)!

let arr = readLine()!.split(separator: " ").map { Int($0)! }

var dp: [Int] = [arr[0]]

var sum = arr[0]

for i in 1..<N {
    dp.append(max(arr[i], dp[i-1]+arr[i]))
    if dp[i] > sum {
        sum = dp[i]
    }
}

print(sum)