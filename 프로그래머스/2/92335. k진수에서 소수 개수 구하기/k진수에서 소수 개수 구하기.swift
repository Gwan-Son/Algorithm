import Foundation

func solution(_ n:Int, _ k:Int) -> Int {
    let number = String(n, radix: k).split(separator: "0").map{ Int($0)! }.filter { $0 != 1 }
    var count: Int = 0
    print(number)
    number.forEach { num in
        var prime = true
        for i in 2...Int(sqrt(Double(num))) + 1 {
            if num % i == 0 && i != num {
                prime = false
                break
            }
        }
        if prime {
            count += 1
        }
    }
    return count
}