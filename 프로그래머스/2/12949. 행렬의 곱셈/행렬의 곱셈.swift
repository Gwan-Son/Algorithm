import Foundation

func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    let m = arr1.count
    let n = arr2[0].count
    let k = arr1[0].count
    
    var result = [[Int]](repeating: [Int](repeating: 0, count: n), count: m)
    
    for i in 0..<m {
        for j in 0..<n {
            for l in 0..<k {
                result[i][j] += arr1[i][l] * arr2[l][j]
            }
        }
    }
    
    return result
}