import Foundation

let t = Int(readLine()!)!

for _ in 0..<t {
    let n = Int(readLine()!)!
    
    var arr = [Int](repeating: 0, count: 1001)
    
    for _ in 0..<n {
        let temp = Int(readLine()!)!
        arr[temp] += 1
    }
    
    var maxCount = 0
    var result = 0
    for i in (0..<arr.count).reversed() {
        if arr[i] >= maxCount {
            result = i
            maxCount = arr[i]
        }
    }
    print(result)
}
