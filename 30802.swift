import Foundation

// 참가자들한테 티셔츠 1 펜 1
// 티셔츠는 같은 사이즈만 T묶음으로 가능
// 사이즈별 / T + (사이즈별 % T != 0)이면 +1
// 펜은 P묶음이나 낱개 가능 -> 참가자수 / P + 참가자수 % P 끝.

let N = Int(readLine()!)!
let sizes = readLine()!.split(separator: " ").map{ Int($0)! }
let TP = readLine()!.split(separator: " ").map{ Int($0)! }

var shirts = 0
var pens = 0
var pen = 0

for i in sizes {
    shirts += i/TP[0]
    if i % TP[0] != 0 {
        shirts += 1
    }
}

pens = N / TP[1]
pen = N % TP[1]

print(shirts)
print("\(pens) \(pen)")
