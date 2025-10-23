import Foundation

let n = Int(readLine()!)!
let r = n % 8
let ans: Int

if r == 0 {
    ans = 2
} else if r <= 5 {
    ans = r
} else {
    ans = 10 - r 
}

print(ans)
