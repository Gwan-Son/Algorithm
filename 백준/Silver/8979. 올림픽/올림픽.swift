import Foundation

let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
let N = input[0]; let K = input[1]
var arr: [(Int, Int, Int, Int)] = []

for _ in 0..<N {
    let country = readLine()!.split(separator: " ").map{ Int(String($0))! }
    arr.append((country[0],country[1],country[2],country[3]))
}

arr.sort(by: { $0.3 > $1.3 })
arr.sort(by: { $0.2 > $1.2 })
arr.sort(by: { $0.1 > $1.1 })

let findNum = arr[(arr.firstIndex(where: {$0.0 == K })!)]
var answer = 1
for i in arr {
    if i.1 == findNum.1 && i.2 == findNum.2 && i.3 == findNum.3 {
        print(answer)
        break
    } else {
        answer += 1
    }
}