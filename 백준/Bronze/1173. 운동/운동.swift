import Foundation

let input = readLine()!.split(separator: " ").map{ Int($0)! }
var N = input[0]; let m = input[1]; let M = input[2]; let T = input[3]; let R = input[4]

var time = 0
var curm = m

while M - m >= T {
    if N <= 0 { break }
    if curm + T > M {
        if curm - R < m {
            curm = m
        } else {
            curm -= R
        }
    } else {
        curm += T
        N -= 1
    }
    time += 1
}

if N <= 0 {
    print(time)
} else {
    print(-1)
}