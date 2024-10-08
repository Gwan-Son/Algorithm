import Foundation

let N = Int(readLine()!)! // 집의 개수

var rgb = [[Int]]()

for _ in 0..<N {
    rgb.append(readLine()!.split(separator: " ").map { Int($0)! })
}

for i in 1..<N {
    rgb[i][0] = rgb[i][0] + min(rgb[i-1][1], rgb[i-1][2])
    rgb[i][1] = rgb[i][1] + min(rgb[i-1][0], rgb[i-1][2])
    rgb[i][2] = rgb[i][2] + min(rgb[i-1][0], rgb[i-1][1])
}

print(rgb[N-1].min()!)

// 1번째 집이 R, G, B일 때의 케이스를 구하여 최솟값을 배출.