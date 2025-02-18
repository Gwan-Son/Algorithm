import Foundation

let input = readLine()!.split(separator: " ").map{ Int($0)! }
let N = input[0]; let M = input[1]

var graphs: [Int:[Int]] = [:]
var indegree = [Int](repeating: 0, count: N+1)
var answer = [Int]()
for i in 1...N {
    graphs[i, default: []] = []
}

for _ in 0..<M {
    let line = readLine()!.split(separator: " ").map{ Int($0)! }
    let A = line[0]; let B = line[1]
    graphs[A]!.append(B)
    indegree[B] += 1
}

func topology_sort() {
    var queue = [Int]()
    for i in 1...N {
        if indegree[i] == 0 {
            queue.append(i)
        }
    }
    
    while !queue.isEmpty {
        let cur = queue.removeFirst()
        answer.append(cur)
        
        for i in graphs[cur, default: []] {
            indegree[i] -= 1
            if indegree[i] == 0 {
                queue.append(i)
            }
        }
    }
    
}

topology_sort()

print(answer.map{ String($0) }.joined(separator: " "))