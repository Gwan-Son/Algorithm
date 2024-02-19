import Foundation

func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var arr3 = [[Int]](repeating: [Int](repeating: 0, count: arr1[0].count), count: arr1.count)

    for i in 0..<arr1.count{
        for j in 0..<arr1[0].count{
            arr3[i][j] = arr1[i][j] + arr2[i][j]
        }
    }
    
    return arr3
}

/* zip을 이용한 풀이방법
import Foundation

func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    return zip(arr1, arr2).map{zip($0,$1).map{$0+$1}}
}
*/
