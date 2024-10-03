import Foundation

func solution(_ cap:Int, _ n:Int, _ deliveries:[Int], _ pickups:[Int]) -> Int64 {
    var result: Int64 = 0
    var carry = 0
    var pickup = 0
    
    for i in (0..<n).reversed() {
        carry += deliveries[i]
        pickup += pickups[i]
        
        while carry > 0 || pickup > 0 {
            carry -= cap
            pickup -= cap
            result += Int64((i + 1) * 2)
        }
    }
    
    return result
}