import Foundation

let input = readLine()!.split(separator: " ").map{ Int($0)! }
let n = input[0]
let m = input[1]

var arr = [Int](0...n)
var answer = ""

func Find(_ x: Int) -> Int {
    if arr[x] == x {
        return x
    }
    arr[x] = Find(arr[x])
    return arr[x]
}

func Union(_ x: Int, _ y: Int) {
    let a = Find(x)
    let b = Find(y)
    
    if a == b {
        return
    }
    if a > b {
        arr[a] = b
    } else {
        arr[b] = a
    }
}

for _ in 0..<m {
    var union = readLine()!.split(separator: " ").map{ Int($0)! }
    let oper = union[0]
    if oper == 0 {
        Union(union[1], union[2])
    } else if oper == 1 {
        answer += (Find(union[1]) == Find(union[2])) ? "YES\n" : "NO\n"
    }
}

print(answer)
