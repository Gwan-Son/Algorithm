import Foundation

let n = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map{ Int(String($0))! }
arr.sort()

func solution() {
    var answer1 = 1_000_000_000
    var answer2 = 1_000_000_000

    var start = 0
    var end = n - 1

    while start != end {
        if abs(arr[start] + arr[end]) < abs(answer1 + answer2) {
            answer1 = arr[start]
            answer2 = arr[end]
        }

        if arr[start] + arr[end] < 0 {
            start += 1
        } else {
            end -= 1
        }
    }

    print(answer1, answer2)
}

solution()