import Foundation

let L = Int(readLine()!)! // L

let arr = readLine()!.map{String($0)}

let r: CLongLong = 31

let M: CLongLong = 1234567891
var R: CLongLong = 1

var hashNumber: CLongLong = 0

for (idx, ch) in arr.enumerated() {
    hashNumber += (CLongLong((UnicodeScalar(ch)!.value) - 96) * R) % M
    hashNumber %= M
    R = (R * r) % M
}

print(hashNumber)
