import Foundation

let input = readLine()!.split(separator: " ").map{ Int($0)! }

let A = input[0]
let B = input[1]
let C = input[2]

if B >= C {
    print(-1)
} else {
    print(A / (C - B) + 1)
}
