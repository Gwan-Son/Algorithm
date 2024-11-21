import Foundation

let input = readLine()!.split(separator: " ").map{ Int($0)! }
let n = input[0]
let m = input[1]

let directions = [0,1,2,3] // 북, 동, 남, 서
// 반시계 90도
// 0 -> 3 -> 2 -> 1
// + 3 % 4

var arr = [[Int]](repeating: [], count: n)

let robot = readLine()!.split(separator: " ").map{ Int($0)! }
var robotPos = (robot[0], robot[1], robot[2]) // x, y, d

for i in 0..<n {
    arr[i] = readLine()!.split(separator: " ").map{ Int($0)! }
}

func checkCleanUp(_ x: Int, _ y: Int) -> Bool {
    if x < 0 || x >= n || y < 0 || y >= m {
        return false
    }
    
    if arr[x][y] == 0 {
        return true
    } else {
        return false
    }
}

var run = true
while run {
    if arr[robotPos.0][robotPos.1] == 0 {
        arr[robotPos.0][robotPos.1] = 3
    }
    
    // 주변 4칸 중에 하나라도 청소가 가능할 경우
    if checkCleanUp(robotPos.0 - 1, robotPos.1) || checkCleanUp(robotPos.0, robotPos.1 + 1) || checkCleanUp(robotPos.0 + 1, robotPos.1) || checkCleanUp(robotPos.0, robotPos.1 - 1) {
        robotPos.2 = (robotPos.2 + 3) % 4
        switch robotPos.2 {
        case 0:
            if checkCleanUp(robotPos.0 - 1, robotPos.1) {
                robotPos.0 -= 1
            }
        case 1:
            if checkCleanUp(robotPos.0, robotPos.1 + 1) {
                robotPos.1 += 1
            }
        case 2:
            if checkCleanUp(robotPos.0 + 1, robotPos.1) {
                robotPos.0 += 1
            }
        case 3:
            if checkCleanUp(robotPos.0, robotPos.1 - 1) {
                robotPos.1 -= 1
            }
        default:
            continue
        }
    } else {
        switch robotPos.2 {
        case 0:
            if arr[robotPos.0 + 1][robotPos.1] != 1 {
                robotPos.0 += 1
            } else {
                run = false
            }
        case 1:
            if arr[robotPos.0][robotPos.1 - 1] != 1 {
                robotPos.1 -= 1
            } else {
                run = false
            }
        case 2:
            if arr[robotPos.0 - 1][robotPos.1] != 1 {
                robotPos.0 -= 1
            } else {
                run = false
            }
        case 3:
            if arr[robotPos.0][robotPos.1 + 1] != 1 {
                robotPos.1 += 1
            } else {
                run = false
            }
        default:
            break
        }
    }
}

var count = 0
for i in 0..<n {
    for j in 0..<m {
        if arr[i][j] == 3 {
            count += 1
        }
    }
}

print(count)
