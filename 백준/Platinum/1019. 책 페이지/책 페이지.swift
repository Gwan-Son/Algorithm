import Foundation

var end = Int(readLine()!)!

var arr = [Int](repeating: 0, count: 10)

var start = 1
var weight = 1

func calc(num: Int, weight: Int) {
    var n = num
    while n > 0 {
        arr[n % 10] += weight
        n /= 10
    }
}

while start <= end {
    while start % 10 != 0 && start <= end {
        calc(num: start, weight: weight)
        start += 1
    }
    
    if start > end { break }
    
    while end % 10 != 9 && start <= end {
        calc(num: end, weight: weight)
        end -= 1
    }
    
    let cnt = (end / 10) - (start / 10) + 1
    for i in 0...9 {
        arr[i] += cnt * weight
    }
    
    start /= 10
    end /= 10
    weight *= 10
}

print(arr.map{ String($0) }.joined(separator: " "))
