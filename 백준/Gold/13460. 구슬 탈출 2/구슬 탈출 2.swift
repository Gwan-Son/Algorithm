import Foundation

let input = readLine()!.split(separator: " ").compactMap { Int($0) }
let n = input[0]
let m = input[1]

var board: [[Character]] = []
var redX = 0, redY = 0
var blueX = 0, blueY = 0

for i in 0..<n {
    let rowChars = Array(readLine()!)
    var row: [Character] = []
    for (j, ch) in rowChars.enumerated() {
        row.append(ch)
        if ch == "R" {
            redX = i
            redY = j
            row[j] = "."
        } else if ch == "B" {
            blueX = i
            blueY = j
            row[j] = "."
        }
    }
    board.append(row)
}

struct State {
    var rx: Int
    var ry: Int
    var bx: Int
    var by: Int
    var cnt: Int
}

func roll(_ x: Int, _ y: Int, dirX: Int, dirY: Int, board: [[Character]]) -> (nx: Int, ny: Int, fell: Bool, moved: Int) {
    var cx = x
    var cy = y
    var moved = 0
    while true {
        let nx = cx + dirX
        let ny = cy + dirY
        if board[nx][ny] == "#" { // wall
            break
        }
        cx = nx
        cy = ny
        moved += 1
        if board[cx][cy] == "O" { // hole
            return (cx, cy, true, moved)
        }
    }
    return (cx, cy, false, moved)
}

let directions: [(Int, Int)] = [(0,1), (0,-1), (1,0), (-1,0)]

var visited = Array(
    repeating: Array(
        repeating: Array(
            repeating: Array(repeating: false, count: m),
            count: n
        ),
        count: m
    ),
    count: n
)

var queue: [State] = []
queue.append(State(rx: redX, ry: redY, bx: blueX, by: blueY, cnt: 0))
visited[redX][redY][blueX][blueY] = true

while !queue.isEmpty {
    let cur = queue.removeFirst()
    if cur.cnt >= 10 {
        continue
    }

    for (dx, dy) in directions {
        let r = roll(cur.rx, cur.ry, dirX: dx, dirY: dy, board: board)
        let b = roll(cur.bx, cur.by, dirX: dx, dirY: dy, board: board)

        if b.fell {
            continue
        }
        if r.fell {
            print(cur.cnt + 1)
            exit(0)
        }

        var nrx = r.nx, nry = r.ny
        var nbx = b.nx, nby = b.ny

        if nrx == nbx && nry == nby {
            if r.moved > b.moved {
                nrx -= dx
                nry -= dy
            } else {
                nbx -= dx
                nby -= dy
            }
        }

        if !visited[nrx][nry][nbx][nby] {
            visited[nrx][nry][nbx][nby] = true
            queue.append(State(rx: nrx, ry: nry, bx: nbx, by: nby, cnt: cur.cnt + 1))
        }
    }
}

print(-1)
