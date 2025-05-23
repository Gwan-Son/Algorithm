import Foundation

if let n = Int(readLine()!) {
    let arr = readLine()!.split(separator: " ").map{ Int(String($0))! }.sorted()
    var minAbs = Int.max
    var answer: (Int, Int, Int) = (0, 0, 0)

    // 전부 알칼리 - 음수
    if arr.max()! <= 0 {
		print("\(arr[n - 3]) \(arr[n - 2]) \(arr[n - 1])")
        exit(0)
    }
    // 전부 산성 - 양수
    if arr.min()! >= 0 {
        print("\(arr[0]) \(arr[1]) \(arr[2])")
        exit(0)
    }

    // 혼합
    if n == 3 {
        arr.forEach {
            print($0, terminator: " ")
        }
    } else {
        for i in 0...(n - 3) {
			var left = i + 1
            var right = n - 1
            while left < right {
                var sum = arr[i] + arr[left] + arr[right]
                if abs(sum) < minAbs {
                    minAbs = abs(sum)
                    answer = (arr[i], arr[left], arr[right])
                }
                if sum < 0 {
                    left += 1
                } else if sum > 0 {
                    right -= 1
                } else {
                    // sum == 0
                    answer = (arr[i], arr[left], arr[right])
                    break
                }
            }
        }
    }

    let result = [answer.0, answer.1, answer.2].sorted()
    result.forEach {
        print($0, terminator: " ")
    }
}