import Foundation

if let n = Int(readLine()!) {
    var board = [[Int]]()

    for _ in 0..<n {
        let line = readLine()!.split(separator: " ").map{ Int(String($0))! }
        board.append(line)
    }

    var whiteBoard = [(Int, Int)]()
    var blackBoard = [(Int, Int)]()

    for i in 0..<n {
        for j in 0..<n {
            if board[i][j] == 1 {
                if (i + j) % 2 == 0 {
                    whiteBoard.append((i, j))
                } else {
                    blackBoard.append((i, j))
                }
            }
        }
    }

    // / 대각선
    var leftToRight = [Bool](repeating: false, count: 2 * n)
    // \ 대각선
    var rightToLeft = [Bool](repeating: false, count: 2 * n)


    func dfs(_ arr: [(Int, Int)], _ idx: Int, _ count: Int) -> Int {
        if idx == arr.count {
            return count
        }

        let (x, y) = arr[idx]
        let dir1 = x + y
        let dir2 = x - y + n - 1
		var ret = 0

        if !leftToRight[dir1] && !rightToLeft[dir2] {
            leftToRight[dir1] = true
            rightToLeft[dir2] = true
            ret = max(ret, dfs(arr, idx + 1, count + 1))
            leftToRight[dir1] = false
            rightToLeft[dir2] = false
        }

        ret = max(ret, dfs(arr, idx + 1, count))
        return ret
    }

    let whiteMax = dfs(whiteBoard, 0, 0)
    let blackMax = dfs(blackBoard, 0, 0)
    print(whiteMax + blackMax)
}