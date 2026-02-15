import Foundation

let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
let n = input[0], k = input[1]

var arr = readLine()!.split(separator: " ").map{ Int(String($0))! }

var result = [Int]()
var count = 0

func bubbleSort(_ array: inout [Int], _ k: Int) {
    for index1 in 0..<(array.count - 1) {
        var isSwap = false
        for index2 in 0..<((array.count - index1) - 1) {
            if array[index2] > array[index2 + 1] {
                array.swapAt(index2, (index2 + 1))
                isSwap = true
                count += 1
                if count == k {
                    result = array
                }
            }
        }
        if isSwap == false { return }
    }
}

bubbleSort(&arr, k)
if count < k {
    print(-1)
} else {
    print(result.map{ String($0) }.joined(separator: " "))
}
