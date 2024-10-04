let input = readLine()!.split(separator: " ").map{ Int($0)! }

let N = input[0]
let M = input[1]

var stack = [Int]()

func dfs(index: Int) {
    if stack.count == M {
        print(stack.map{ String($0)}.joined(separator: " "))
        return
    }
    
    if index > N {
        return
    }
    
    for i in index...N {
        if !stack.contains(i) {
            stack.append(i)
            dfs(index: i + 1)
            stack.removeLast()
        }
    }
}

dfs(index: 1)