import Foundation

let input = Int(readLine()!)! // N

var arr: [Int] = [] // 입력받을 배열

for _ in 1...input {
    arr.append(Int(readLine()!)!) // 배열 입력
}

arr.sort() // 배열 오름차순 정렬

// 산술평균
print(Int(round(arr.map{Double($0)}.reduce(0,+) / Double(input))))

// 중앙값
print(arr[input / 2])

// 최빈값
var mode = Dictionary(arr.map {($0, 1)}, uniquingKeysWith: +)
let maxMode = mode.filter{ $0.value == mode.values.max()! }.sorted{ $0.key < $1.key}
if maxMode.count == 1 {
    print(Int(maxMode.first!.key))
} else {
    print(Int(maxMode[1].key))
}

// 범위
print(arr.last! - arr.first!)
