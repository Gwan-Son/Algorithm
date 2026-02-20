import Foundation

let n = Int(readLine()!)!

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{ String($0) }
    var price = Double(input[0])!
    let dot = input[1]
    let coupon = input[2]
    let purchase = input[3]
    
    switch dot {
    case "R":
        price *= 0.55
    case "G":
        price *= 0.7
    case "B":
        price *= 0.8
    case "Y":
        price *= 0.85
    case "O":
        price *= 0.9
    case "W":
        price *= 0.95
    default:
        price = round(1000 * price)/1000
        break
    }
    if coupon == "C" {
        price *= 0.95
        price = round(1000 * price)/1000
    }
    
    if purchase == "C" {
        price = round(10 * price)/10
    } else {
        price = Double(Int(price * 100)) / 100
    }
    print("$\(String(format: "%.2f", price))")
}
