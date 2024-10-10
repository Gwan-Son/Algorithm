import Foundation

let n = Int(readLine()!)!

var arr = [[Int]](repeating: Array(repeating: 0, count: n), count: n)

for i in 0..<n {
    arr[i] = readLine()!.split(separator: " ").map{ Int($0)! }
}

var white = 0
var blue = 0

func checkBoard(_ startX: Int, _ endX: Int, _ startY: Int, _ endY: Int) {
    let check = arr[startX][startY]
    for i in startX..<endX {
        for j in startY..<endY {
            if arr[i][j] != check {
                checkBoard(startX, (startX + endX) / 2, startY, (startY + endY) / 2) // 1사분면
                checkBoard((startX + endX) / 2, endX, startY, (startY + endY) / 2) // 2사분면
                checkBoard(startX, (startX + endX) / 2, (startY + endY) / 2, endY) // 3사분면
                checkBoard((startX + endX) / 2, endX, (startY + endY) / 2, endY) // 4사분면
                return
            }
        }
    }
    if check == 0 {
        white += 1
    } else {
        blue += 1
    }
}

checkBoard(0, n, 0, n)

print(white)
print(blue)
