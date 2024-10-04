let input = readLine()!.split(separator: " ").map{ Int($0)! }

let N = input[0]
let M = input[1]

var stack = [Int]()

func dfs() {
    if stack.count == M {
        print(stack.map{ String($0)}.joined(separator: " "))
        return
    }
    for i in 1...N {
        if !stack.contains(i) {
            stack.append(i)
            dfs()
            stack.removeLast()
        }
    }
}

dfs()