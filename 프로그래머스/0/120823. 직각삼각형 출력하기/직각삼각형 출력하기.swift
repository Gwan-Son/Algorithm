import Foundation

let n = Int(readLine()!)!

for i in 1...n {
    print(repeatElement("*", count: i).joined())
}