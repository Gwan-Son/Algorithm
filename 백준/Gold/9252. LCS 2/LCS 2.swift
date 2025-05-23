import Foundation

let x = readLine()!.map{String($0)}
let y = readLine()!.map{String($0)}
var dp = Array(repeating: Array(repeating: 0, count: y.count + 1), count: x.count + 1)
for i in 1...x.count{
    for j in 1...y.count{
        if x[i - 1] == y[j - 1]{
            dp[i][j] = dp[i - 1][j - 1] + 1
        }else{
            dp[i][j] = max(dp[i - 1][j], dp[i][j - 1])
        }

    }
}

var i = x.count
var j = y.count
var lcs = ""

while i > 0 && j > 0 {
    if x[i - 1] == y[j - 1] {
        lcs = x[i - 1] + lcs
        i -= 1
        j -= 1
    } else if dp[i - 1][j] > dp[i][j - 1] {
        i -= 1
    } else {
        j -= 1
    }
}



print(dp[x.count][y.count])
dp[x.count][y.count] == 0 ? print("") : print(lcs)