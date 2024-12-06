import Foundation

func dfs(_ arr: [Int], _ index: Int, _ origin: [Int]) {
    if arr.count == 6 {
        arr.forEach { print($0, terminator: " ") }
        print()
        return
    }
    
    for i in index..<origin.count {
        dfs(arr + [origin[i]], i + 1, origin)
    }
}

while true {
    var input = readLine()!.split(separator: " ").map { Int(String($0))! }
    if input[0] == 0 {
        break
    }
    let _ = input.removeFirst()
    dfs([], 0, input)
    print()
}
