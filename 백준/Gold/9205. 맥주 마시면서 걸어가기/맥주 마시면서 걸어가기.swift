import Foundation

let t = Int(readLine()!)!

func bfs(startPos: (Int, Int), endPos: (Int, Int), convinienceStorePos: [(Int, Int)]) -> Bool {
    var visited = Array(repeating: false, count: convinienceStorePos.count)
    var queue = [(Int, Int)]()
    
    queue.append(startPos)
    
    
    
    while !queue.isEmpty {
        let (x, y) = queue.removeFirst()
        
        if (x, y) == endPos {
            return true
        }
        
        for i in 0..<convinienceStorePos.count {
            if !visited[i] && abs(convinienceStorePos[i].0 - x) + abs(convinienceStorePos[i].1 - y) <= 1000 {
                visited[i] = true
                queue.append(convinienceStorePos[i])
            }
        }
    }
    
    return false
}

for _ in 0..<t {
    let n = Int(readLine()!)!
    
    let startInput = readLine()!.split(separator: " ").map{ Int(String($0)) }
    var convinienceStorePos = [(Int, Int)]()
    let startPos = (startInput[0]!, startInput[1]!)
    for _ in 0..<n {
        let input = readLine()!.split(separator: " ").map{ Int(String($0)) }
        let pos = (input[0]!, input[1]!)
        convinienceStorePos.append(pos)
    }
    let endInput = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let endPos = (endInput[0], endInput[1])
    convinienceStorePos.append(endPos)
    
    bfs(startPos: startPos, endPos: endPos, convinienceStorePos: convinienceStorePos) ? print("happy") : print("sad")
}
