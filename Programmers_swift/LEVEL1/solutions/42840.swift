import Foundation

func solution(_ answers:[Int]) -> [Int] {
    let one = [1,2,3,4,5]
    let two = [2,1,2,3,2,4,2,5]
    let three = [3,3,1,1,2,2,4,4,5,5]

    var result = [0,0,0]

    for i in answers.indices {
        if answers[i] == one[i%5] {
            result[0] += 1
        }
        if answers[i] == two[i%8] {
            result[1] += 1
        }
        if answers[i] == three[i%10] {
            result[2] += 1
        }
    }

    func findMaxIndices(arr: [Int]) -> [Int] {
        var maxIndices: [Int] = []
        let maxValue = arr.max() ?? Int.min

        for (index, value) in arr.enumerated() where value == maxValue {
            maxIndices.append(index + 1)
        }
        return maxIndices
    }
    
    return findMaxIndices(arr: result)
}
