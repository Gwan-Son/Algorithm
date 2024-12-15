import Foundation

let nodeCount = Int(readLine()!)!

var answer: [String] = ["", "", ""]

var tree: [String: [String]] = [:]

for _ in 1...nodeCount {
    let input = readLine()!.split(separator: " ").map { String($0) }
    tree.updateValue([input[1], input[2]], forKey: input[0])
}

func dfs(_ node: String) {
    if node == "." { return }
    
    answer[0] += node
    dfs(tree[node]![0])
    answer[1] += node
    dfs(tree[node]![1])
    answer[2] += node
}

dfs("A")

answer.forEach {
    print($0, terminator: "\n")
}
