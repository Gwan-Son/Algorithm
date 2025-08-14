import Foundation

var fourSubject = [Int]()
var twoSubject = [Int]()
for _ in 0..<4 {
    let input = Int(readLine()!)!
    fourSubject.append(input)
}
for _ in 0..<2 {
    let input = Int(readLine()!)!
    twoSubject.append(input)
}

let result = fourSubject.reduce(0, +) + twoSubject.max()! - fourSubject.min()!

print(result)
