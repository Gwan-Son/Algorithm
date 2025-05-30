import Foundation

let t = Int(readLine()!)!

for _ in 0..<t {
    let n = Int(readLine()!)!
    let choices:[Int] = [0] + readLine()!.split(separator: " ").map{ Int(String($0))! }
    var visited = [Int](repeating: 0, count: n + 1)
    var inTeam = [Bool](repeating: false, count: n + 1)


    func dfs(_ num: Int) {
        if visited[num] == 1 {
            var current = num
            while true {
                inTeam[current] = true
                current = choices[current]
                if current == num {
                    break
                }
            }
            return
        }

        if visited[num] == 2 {
            return
        }

        visited[num] = 1
        dfs(choices[num])
        visited[num] = 2
    }

    for i in 1...n {
        if visited[i] == 0 {
            dfs(i)
        }
    }

    let teamCount = inTeam.filter{ $0 }.count
    print(n - teamCount)
}
