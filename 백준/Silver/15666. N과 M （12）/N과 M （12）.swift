import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0]
let m = input[1]

var arr: [Int] = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted()
var result = [Int](repeating: 0, count: m)


func dfs(_ index: Int, _ k: Int) {
    if k == m {
        result.forEach {
            print($0, terminator: " ")
        }
        print()
        return
    } else {
        var prev = 0
        for i in index..<arr.count {
            if prev != arr[i] {
                result[k] = arr[i]
                prev = arr[i]
                dfs(i, k + 1)
            }
        }
    }
}


dfs(0,0)
