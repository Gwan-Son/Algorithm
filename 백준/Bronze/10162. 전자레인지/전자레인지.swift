import Foundation

var t = Int(readLine()!)!

var A = 0; var B = 0; var C = 0

if t % 10 != 0 {
    print(-1)
} else {
    A = t / 300
    t = t % 300
    B = t / 60
    t = t % 60
    C = t / 10
    print(A, B, C)
}