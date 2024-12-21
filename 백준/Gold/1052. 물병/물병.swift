import Foundation

let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
var bottle = input[0]
var k = input[1]
var count = 24
var answer = 0
while count > k {
    count = 0
    var n = bottle
    while n > 0 {
        count += 1
        n &= n - 1
    }
    if count > k {
        answer += bottle & -bottle
        bottle += bottle & -bottle
    }
}

print(answer)
