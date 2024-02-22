import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}
var arr: [Int] = Array(repeating: 0, count: input[0])
for i in 0..<input[0]{
    arr[i] = Int(readLine()!)!
}

var result: Int = 0

var start = 1
var end = arr.max()!
var mid = 0
while start <= end{
    mid = (start + end) / 2
    result = 0
    for i in arr{
        result += i / mid
    }
    if result >= input[1]{
        start = mid + 1
    } else {
        end = mid - 1
    }
}

print(end)
