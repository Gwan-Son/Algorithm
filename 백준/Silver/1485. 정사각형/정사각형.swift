import Foundation

let t = Int(readLine()!)!

func checkSquare(_ arr: [(Int, Int)]) -> Bool {
    let length = abs(arr[3].0 - arr[0].0) + abs(arr[3].1 - arr[0].1)
    
    for i in 0..<3 {
        let tempLength = abs(arr[i].0 - arr[i + 1].0) + abs(arr[i].1 - arr[i + 1].1)
        if tempLength != length {
            return false
        }
    }
    
    let line13 = abs(arr[0].0 - arr[2].0) + abs(arr[0].1 - arr[2].1)
    let line24 = abs(arr[1].0 - arr[3].0) + abs(arr[1].1 - arr[3].1)
    if line13 != line24 {
        return false
    }
    
    return true
}

for _ in 0..<t {
    var arr: [(Int, Int)] = []
    for _ in 0..<4 {
        let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
        arr.append((input[0], input[1]))
    }
    arr.sort(by: { $0.1 < $1.1 })
    arr.sort(by: { $0.0 < $1.0 })
    let temp = arr[3]
    arr[3] = arr[2]
    arr[2] = temp
    checkSquare(arr) ? print(1) : print(0)
}