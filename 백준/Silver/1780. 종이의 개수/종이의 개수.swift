import Foundation

let N = Int(readLine()!)!

var arr = [[Int]](repeating: [], count: N)
var visited = [[Bool]](repeating: [Bool](repeating: false, count: N), count: N)
for i in 0..<N {
    arr[i] = readLine()!.split(separator: " ").map{ Int(String($0))! }
}
var result = [Int: Int]()

func checkPaper(_ x: Int, _ y: Int, _ size: Int) {
    var count = [0, 0, 0]
    for x in x..<x + size {
        for y in y..<y + size {
            if arr[x][y] == -1 {
                count[0] += 1
            } else if arr[x][y] == 0 {
                count[1] += 1
            } else {
                count[2] += 1
            }
        }
    }
    
    for i in 0..<3 {
        if count[i] == size * size {
            result[i, default: 0] += 1
            return
        }
    }
    
    checkPaper(x, y, size / 3)
    checkPaper(x, y + size / 3, size / 3)
    checkPaper(x, y + size / 3 * 2, size / 3)
    checkPaper(x + size / 3, y, size / 3)
    checkPaper(x + size / 3, y + size / 3, size / 3)
    checkPaper(x + size / 3, y + size / 3 * 2, size / 3)
    checkPaper(x + size / 3 * 2, y, size / 3)
    checkPaper(x + size / 3 * 2, y + size / 3, size / 3)
    checkPaper(x + size / 3 * 2, y + size / 3 * 2, size / 3)
}

checkPaper(0, 0, N)

print(result[0, default: 0])
print(result[1, default: 0])
print(result[2, default: 0])

