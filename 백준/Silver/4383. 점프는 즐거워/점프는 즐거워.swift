import Foundation

while let input = readLine() {
    let input = input.split(separator: " ").map{ Int($0)! }
    let n = input[0]
    if n == 1 {
        print("Jolly")
    } else {
        var arr: Set<Int> = []
        for i in 2...n {
            let temp = abs(input[i] - input[i - 1])
            if temp > 0 && temp < n {
                arr.insert(temp)
            }
        }
        if arr.count == n - 1 {
            print("Jolly")
        } else {
            print("Not jolly")
        }
    }
}