import Foundation

let t = Int(readLine()!)!

for _ in 0..<t {
    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    let n = input[0], x = input[1], y = input[2]
    let arr = readLine()!.split(separator: " ").map{ Int($0)! }
    let maxSpeed = arr.max()!
    
    if arr.filter({ $0 == maxSpeed }).count == 1 && arr[n - 1] == maxSpeed {
        print(0)
        continue
    } else {
        let winner: Double = Double(x) / Double(maxSpeed)
        
        func booster(v: Double, bv: Double) -> Double {
            let dist = Double(x) - bv
            return (dist/v) + 1
        }
        var l = 0
        var r = y
        
        while true {
            let mid = (l + r) / 2
            let boost = booster(v: Double(arr[n - 1]), bv: Double(mid))
            if l > r {
                break
            }
            if boost >= winner {
                l = mid + 1
            } else {
                r = mid - 1
            }
        }
        
        if l > y {
            print(-1)
        } else {
            print(l)
        }
    }
}
