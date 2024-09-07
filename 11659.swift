let input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0]
let M = input[1]

let arr = readLine()!.split(separator: " ").map { Int($0)! }
var sumArr = [Int](repeating: 0, count: N + 1)

for i in 0..<N {
    sumArr[i + 1] = sumArr[i] + arr[i]
}

for _ in 0..<M {
    let ij = readLine()!.split(separator: " ").map { Int($0)! }
    if ij[0] == ij[1] {
        print(arr[ij[0] - 1])
    } else {
        print(sumArr[ij[1]] - sumArr[ij[0] - 1])
    }
}
