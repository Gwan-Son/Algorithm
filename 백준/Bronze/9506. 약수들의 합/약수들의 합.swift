import Foundation

while let input = readLine() {
    let n = Int(input)!
    if n == -1 { break }

    let mid = Int(sqrt(Double(n)))
    var sum = 0
    var arr = [Int]()
    for i in 1...mid {
        if n % i == 0 {
            arr.append(i)
            if i == 1 || i == n / i {
                sum += i
            } else {
                arr.append(n / i)
                sum += i + (n / i)
            }
        }
    }
    if sum == n {
        arr.sort()
        print("\(n) = \(arr.map{ String($0) }.joined(separator: " + "))")
    } else {
        print("\(n) is NOT perfect.")
    }
}