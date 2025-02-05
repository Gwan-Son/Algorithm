import Foundation

let n = Int(readLine()!)!
let liquids = readLine()!.split(separator: " ").map { Int(String($0))! }

var result: (Int, Int) = (0, 0)
var sumLiquid = Int.max
var lowIndex = 0
var highIndex = liquids.count - 1

while lowIndex < highIndex {
    let temp: Int64 = Int64(liquids[lowIndex]) + Int64(liquids[highIndex])
    
    if abs(temp) < sumLiquid {
        sumLiquid = Int(abs(temp))
        result = (liquids[lowIndex], liquids[highIndex])
    }
    
    if temp < 0 {
        lowIndex += 1
    } else {
        highIndex -= 1
    }
}

print(result.0, result.1)
