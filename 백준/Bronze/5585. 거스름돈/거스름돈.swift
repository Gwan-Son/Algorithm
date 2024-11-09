import Foundation

let n = Int(readLine()!)!

var price = 1000 - n
var result = 0

while price > 0 {
    if price >= 500 {
        price -= 500
        result += 1
    } else if price >= 100 {
        result += price / 100
        price %= 100
    } else if price >= 50 {
        price -= 50
        result += 1
    } else if price >= 10 {
        result += price / 10
        price %= 10
    } else if price >= 5 {
        price -= 5
        result += 1
    } else {
        result += price
        price = 0
    }
}

print(result)
