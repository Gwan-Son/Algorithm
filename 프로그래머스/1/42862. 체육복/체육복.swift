import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    var lost = lost
    var reserve = reserve
    
    for i in 1...n {
        if lost.contains(i) && reserve.contains(i) {
            lost.remove(at: lost.firstIndex(of: i)!)
            reserve.remove(at: reserve.firstIndex(of: i)!)
        }
    }
    
    for i in 1...n {
        if lost.contains(i) {
            if reserve.contains(i - 1) {
                lost.remove(at: lost.firstIndex(of: i)!)
                reserve.remove(at: reserve.firstIndex(of: i - 1)!)
            } else if reserve.contains(i + 1) {
                lost.remove(at: lost.firstIndex(of: i)!)
                reserve.remove(at: reserve.firstIndex(of: i + 1)!)
            }
        }
    }
    
    return n - lost.count
}