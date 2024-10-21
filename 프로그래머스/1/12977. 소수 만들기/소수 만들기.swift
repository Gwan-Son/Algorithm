import Foundation

func isPrime(_ num: Int) -> Bool {
    if num == 1 {
        return false
    }
    let temp = Int(sqrt(Double(num))) + 1
    for i in 2..<temp {
        if num % i == 0 {
            return false
        }
    }
    
    return true
}

func solution(_ nums:[Int]) -> Int {
    var answer = 0

    for i in 0..<nums.count {
        for j in i+1..<nums.count {
            for k in j+1..<nums.count {
                if isPrime(nums[i] + nums[j] + nums[k]) {
                    answer += 1
                }
            }
        }
    }

    return answer
}