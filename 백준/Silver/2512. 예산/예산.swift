import Foundation

let N = Int(readLine()!)!
var cities: [Int] = readLine()!.split(separator: " ").map{ Int(String($0))! }
let budget = Int(readLine()!)!

cities.sort()

var left = 0
var right = cities.last!
var answer = 0

while left <= right {
    let mid = (left + right) / 2
    var sum = 0
    for city in cities {
        if city <= mid {
            sum += city
        } else {
            sum += mid
        }
    }
    if sum <= budget {
        answer = mid
        left = mid + 1
    } else {
        right = mid - 1
    }
}

print(answer)
