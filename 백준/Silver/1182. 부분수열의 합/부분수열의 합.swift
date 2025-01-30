let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
let n = input[0]; let s = input[1]
let arr = readLine()!.split(separator: " ").map{ Int(String($0))! }

var answer = 0

func dfs(_ index: Int, _ sum: Int) {
    if index == n {
        if sum == s {
            answer += 1
        }
        return
    }
    
    dfs(index + 1, sum + arr[index])
    dfs(index + 1, sum)
}

dfs(0, 0)
if s == 0 {
    answer -= 1
}

print(answer)