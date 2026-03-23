import Foundation

let nk = readLine()!.split(separator: " ").map{ Int(String($0))! }
let n = nk[0], k = nk[1]

var count = 0

var hour = 0
var minite = 0
var second = 0

while hour <= n {
    if (hour % 10 == k) || (hour / 10 % 10 == k) || (minite % 10 == k) || (minite / 10 % 10 == k) || (second % 10 == k) || (second / 10 % 10 == k) {
        count += 1
    }
    second += 1
    if second == 60 {
        second = 0
        minite += 1
    }
    if minite == 60 {
        minite = 0
        hour += 1
    }
}

print(count)
