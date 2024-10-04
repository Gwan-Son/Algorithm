import Foundation

func solution(_ n:Int, _ m:Int, _ x:Int, _ y:Int, _ r:Int, _ c:Int, _ k:Int) -> String {
    var result: String = ""
    var cnt = k - (abs(r-x) + abs(c-y))
    
    if cnt % 2 != 0 || cnt < 0 {
        return "impossible"
    }
    
    var dict: [String: Int] = [
        "d":0,
        "l":0,
        "r":0,
        "u":0
    ]
    
    if x > r {
        dict["u"]! += x - r
    } else {
        dict["d"]! += r - x
    }
    if y > c {
        dict["l"]! += y - c
    } else {
        dict["r"]! += c - y
    }
    
    result += String(repeating: "d", count: dict["d"]!)
    
    let down = min(Int(cnt/2), n-(x+dict["d"]!))
    result += String(repeating: "d", count: down)
    dict["u"]! += down
    cnt -= 2 * down
    
    result += String(repeating: "l", count: dict["l"]!)
    let left = min(Int(cnt/2), y - dict["l"]! - 1)
    result += String(repeating: "l", count: left)
    dict["r"]! += left
    cnt -= 2 * left
    
    result += String(repeating: "rl", count: cnt/2)
    result += String(repeating: "r", count: dict["r"]!)
    result += String(repeating: "u", count: dict["u"]!)
    
    
    return result
}