import Foundation

let T = Int(readLine()!)!

func gcd(_ a:Int, _ b: Int) -> Int {
    if b == 0 {
        return a
    }
    return gcd(b, a % b)
}

for _ in 1...T {
    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    let m = input[0]
    let n = input[1]
    let x = input[2]
    let y = input[3]
    
    let max = (m * n) / gcd(m, n) // 최소공배수
    var result = -1
    for i in stride(from: x, through: max, by: m) {
        var ny = i % n
        if ny == 0 {
            ny = n
        }
        
        if ny == y {
            result = i
            break
        }
    }
    print(result)
}
