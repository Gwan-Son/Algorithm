import Foundation

let input = readLine()!.split(separator: " ").map{ Int($0)! }
let N = input[0]
let r = input[1]
let c = input[2]

func solution(_ N: Int, _ r: Int, _ c: Int) -> Int {
    if N == 0 {
        return 0
    }
    
    let half = 1 << (N - 1)
    let quadrant = (r < half ? 0 : 2) + (c < half ? 0 : 1)
    let subSquareSize = half * half
        
    return quadrant * subSquareSize + solution(N - 1, r % half, c % half)
}

print(solution(N, r, c))
