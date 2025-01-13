import Foundation

let destChan = Int(readLine()!)!
let breakButtonCount = Int(readLine()!)!
var arr = [Int]()
if breakButtonCount != 0 {
    arr = readLine()!.split(separator: " ").map{ Int(String($0))! }
}

func checkButton(_ num: Int) -> Int {
    var num = num
    if num == 0 {
        if arr.contains(0) { return 0 }
        else { return 1 }
    }
    var count = 0
    while num > 0 {
        if arr.contains(num % 10) { return 0 }
        num = num / 10
        count += 1
    }
    return count
}

var minCount = abs(destChan - 100)

for i in 0...1000000 {
    let count = checkButton(i)
    if count > 0 {
        let tempCount = abs(destChan - i)
        minCount = min(minCount, count + tempCount)
    }
}

print(minCount)
