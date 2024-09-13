import Foundation

func woodCuttingMaxHeight(_ treeHeights: [Int], _ desiredLength: Int) -> Int {
    var start = 0
    var end = treeHeights.max()!
    
    func cutWood(_ height: Int) -> Int {
        return treeHeights.reduce(0) { $0 + max(0, $1 - height) }
    }
    
    while start <= end {
        let mid = (start + end) / 2
        if cutWood(mid) >= desiredLength {
            start = mid + 1
        } else {
            end = mid - 1
        }
    }
    return end
}

let input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0]
let M = input[1]

let treeHeights = readLine()!.split(separator: " ").map { Int($0)! }

let maxHeight = woodCuttingMaxHeight(treeHeights, M)

print(maxHeight)
