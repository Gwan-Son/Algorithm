import Foundation

func solution(_ n:Int, _ k:Int) -> Int {
    let service = n / 10
    if k - service > 0 {
        return n * 12000 + (k - service) * 2000
    } else {
        return n * 12000
    }
}