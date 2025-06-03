import Foundation

let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
let n = input[0], k = input[1]

let arr = readLine()!.split(separator: " ").map{ Int(String($0))! }

var colors = [Int]()

for i in 0..<n {
    if i == 0 || arr[i] != arr[i - 1] {
        colors.append(arr[i])
    }
}

let m = colors.count

if m == 1 {
    print(0)
} else {
    var dp = [[Int]](repeating: [Int](repeating: Int.max / 2, count: m), count: m)

    for i in 0..<m {
        dp[i][i] = 0
    }

    for length in 2...m {
        for start in 0...(m - length) {
			let end = start + length - 1

            for mid in start..<end {
                let cost = (colors[start] != colors[mid + 1]) ? 1 : 0
                dp[start][end] = min(dp[start][end], dp[start][mid] + dp[mid + 1][end] + cost)
            }
        }
    }

    print(dp[0][m - 1])
}
