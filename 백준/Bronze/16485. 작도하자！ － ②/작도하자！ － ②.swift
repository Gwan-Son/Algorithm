import Foundation

let cb = readLine()!.split(separator: " ").map{ Double(String($0))! }
let c = cb[0], b = cb[1]

let intDiv = Int(c) / Int(b)
let doubleDiv = c / b

if intDiv == Int(doubleDiv) && doubleDiv == Double(Int(doubleDiv)) {
    print(intDiv)
} else {
    print(doubleDiv)
}
