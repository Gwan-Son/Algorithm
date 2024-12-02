import Foundation

let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
var N = input[0]
var kim = input[1]
var lim = input[2]

var round = 1

func checkVersus(_ x: Int, _ y: Int) -> Bool {
    if x < y {
        if y % 2 == 0 && x + 1 == y {
            return true
        }
    } else {
        if x % 2 == 0 && y + 1 == x {
            return true
        }
    }
    
    return false
}

while !checkVersus(kim, lim) {
    if kim % 2 == 0 {
        kim /= 2
    } else {
        kim = kim / 2 + 1
    }
    
    if lim % 2 == 0 {
        lim /= 2
    } else {
        lim = lim / 2 + 1
    }
    
    round += 1
}

print(round)