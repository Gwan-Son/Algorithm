import Foundation

if let n = Int(readLine()!), let p = Int(readLine()!) {
    var result = p
    if n >= 20 {
        let discountPrice = (p - 2000) < 0 ? 0 : (p - 2000)
        let discountPercent = p - p / 4
        result = min(discountPrice, discountPercent)
    } else if n >= 15 {
        let discountPrice = (p - 2000) < 0 ? 0 : (p - 2000)
        let discountPercent = p - p / 10
        result = min(discountPrice, discountPercent)
    } else if n >= 10 {
        let discountPrice = (p - 500) < 0 ? 0 : (p - 500)
        let discountPercent = p - p / 10
        result = min(discountPrice, discountPercent)
    } else if n >= 5 {
        let discountPrice = (p - 500) < 0 ? 0 : (p - 500)
        result = min(discountPrice, result)
    }
    print(result)
}