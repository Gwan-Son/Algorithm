import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    var arr = sizes.map{$0.sorted()}
    var minMaxSize = 0
    var maxMaxSize = 0
    for i in 0..<arr.count{
        let element1 = arr[i][0]
        let element2 = arr[i][1]
        minMaxSize = max(minMaxSize, element1)
        maxMaxSize = max(maxMaxSize, element2)
    }
    return minMaxSize * maxMaxSize
}
