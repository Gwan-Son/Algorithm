import Foundation

func checkBinaryTree(_ arr: [Character], _ left: Int, _ right: Int) -> Int {
    if left == right {
        return 1
    }
    
    let mid = (left + right) / 2
    
    if arr[mid] == "0" {
        for i in left...mid {
            if arr[i] == "1" {
                return 0
            }
        }
        for i in (mid + 1)...(right) {
            if arr[i] == "1" {
                return 0
            }
        }
    }
    
    let leftResult = checkBinaryTree(arr, left, mid - 1)
    let rightResult = checkBinaryTree(arr, mid + 1, right)
    
    return (leftResult != 0) && (rightResult != 0) ? 1 : 0
}

func solution(_ numbers:[Int64]) -> [Int] {
    var results: [Int] = []
    
    for number in numbers {
        var numberString = String(number, radix: 2)
        let nodeHeight = Int(ceil(log2(Double(numberString.count + 1)) - 1))
        let nodeCount = Int(pow(2.0, Double(nodeHeight + 1)) - 1)
        while numberString.count != nodeCount {
            numberString = "0" + numberString
        }

        let numberArr = Array(numberString)
        if numberArr[numberArr.count / 2] == "0" {
            results.append(0)
            continue
        }
        
        results.append(checkBinaryTree(numberArr, 0, numberArr.count - 1))
    }
    
    return results
}