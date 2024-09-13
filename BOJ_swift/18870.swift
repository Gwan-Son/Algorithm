import Foundation

let n = Int(readLine()!)!
let arr: [Int] = readLine()!.split(separator: " ").map{ Int($0)! }
let sortedUniqueArr = Array(Set(arr)).sorted()

var compressedCoords = [Int: Int]()
for (i,v) in sortedUniqueArr.enumerated() {
    compressedCoords[v] = i
}

let result = arr.map{ compressedCoords[$0]! }
print(result.map{ String($0) }.joined(separator: " "))
