import Foundation

let a = Int(readLine()!)!
let b = Int(readLine()!)!
let c = Int(readLine()!)!
let d = Int(readLine()!)!
let p = Int(readLine()!)!

let aPrice = a * p
var bPrice = b

if p > c {
    bPrice += (p - c) * d
}

print(min(aPrice, bPrice))
