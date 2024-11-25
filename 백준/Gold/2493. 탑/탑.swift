import Foundation

let n = Int(readLine()!)!
var tower = readLine()!.split(separator: " ").map { Int(String($0))! }
tower.insert(0, at: 0)
var result = [Int](repeating: 0, count: n + 1)

func find(_ curIndex: Int, _ prevIndex: Int) -> Int {
    if prevIndex == 0 { return 0 }
    
    if tower[curIndex] <= tower[prevIndex] {
        return prevIndex
    } else {
        return find(curIndex, result[prevIndex])
    }
}

for i in 2...n {
    result[i] = find(i, i - 1)
}

result.removeFirst()
result.forEach {
    print($0, terminator: " ")
}
