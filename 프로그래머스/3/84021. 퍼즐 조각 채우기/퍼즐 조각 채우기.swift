import Foundation

struct Point: Hashable {
  var x: Int
  var y: Int
  init(_ x: Int, _ y: Int) {
    self.x = x
    self.y = y
  }
}

typealias BlockPoints = [Point]
let directions: [Point] = [(0,1),(0,-1),(-1,0),(1,0)].map { .init($0.0, $0.1) }

func solution(_ game_board:[[Int]], _ table:[[Int]]) -> Int {
  var gameBoard = game_board
  var table = table
  let n = table.count
  var emptyBlocks: [BlockPoints] = []
  
  for y in 0..<n {
    for x in 0..<n where gameBoard[y][x] == 0 {
      let blockPoints = bfs(Point(x, y), in: gameBoard, searchCondition: { $0 == 0 })
      emptyBlocks.append(normalize(blockPoints))
      blockPoints.forEach { gameBoard[$0.y][$0.x] = 1 }
    }
  }
  
  var pieceBlocks: [BlockPoints] = []
  for y in 0..<n {
    for x in 0..<n where table[y][x] == 1 {
      let blockPoints = bfs(Point(x, y), in: table, searchCondition: { $0 == 1 })
      pieceBlocks.append(normalize(blockPoints))
      blockPoints.forEach { table[$0.y][$0.x] = 0 }
    }
  }
  
  var filledCount = 0
  for piece in pieceBlocks {
    for rotation in 0..<4 {
      let rotatedPiece = rotate(piece, rotation)
      if let index = emptyBlocks.firstIndex(where: { $0 == rotatedPiece }) {
        filledCount += rotatedPiece.count
        emptyBlocks.remove(at: index)
        break
      }
    }
  }
  
  return filledCount
}

func rotate(_ points: BlockPoints, _ times: Int) -> BlockPoints {
  var result = points
  for _ in 0..<times {
    let maxX = result.max(by: { $0.x < $1.x })!.x
    result = result.map { Point(maxX - $0.y, $0.x) }
  }
  return normalize(result)
}

func normalize(_ points: BlockPoints) -> BlockPoints {
  let minX = points.min(by: { $0.x < $1.x })!.x
  let minY = points.min(by: { $0.y < $1.y })!.y
  return points.map { Point($0.x - minX, $0.y - minY) }.sorted(by: { $0.x == $1.x ? $0.y < $1.y : $0.x < $1.x })
}

func bfs(_ start: Point, in board: [[Int]], searchCondition: (Int) -> Bool) -> BlockPoints {
  let n = board.count
  var visited = Array(repeating: Array(repeating: false, count: n), count: n)
  visited[start.y][start.x] = true
  var queue: [Point] = [start]
  var index = 0
  while index < queue.count {
    let current = queue[index]
    index += 1
    for direction in directions {
      let next = Point(current.x + direction.x, current.y + direction.y)
      if isOutOfBounds(next, n: n) || visited[next.y][next.x] || !searchCondition(board[next.y][next.x]) { continue }
      visited[next.y][next.x] = true
      queue.append(next)
    }
  }
  return queue
}
func isOutOfBounds(_ p: Point, n: Int) -> Bool { !((0..<n)~=p.x && (0..<n)~=p.y) }