import Foundation

var input = [Int]()

for _ in 0..<9 {
    input.append(Int(readLine()!)!)
}

func combination(array: [Int], length: Int) -> [[Int]] {
    var result = [[Int]]()
    
    func combi(nowIndex index: Int, now: [Int]) {
        if now.count == length {
            result.append(now)
            return
        }
        
        for i in index..<array.count {
            combi(nowIndex: i + 1, now: now + [array[i]])
        }
    }
    
    combi(nowIndex: 0, now: [])
    return result
}

let combinations = combination(array: input, length: 7)

for combination in combinations {
    if combination.reduce(0, +) == 100 {
        combination.sorted().forEach { height in
            print(height)
        }
        break
    }
}


