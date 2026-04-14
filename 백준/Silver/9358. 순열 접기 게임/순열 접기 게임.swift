import Foundation

let t = Int(readLine()!)!

for caseT in 0..<t {
    var n = Int(readLine()!)!
    var arr = readLine()!.split(separator: " ").map{ Int(String($0))! }
    var temp = [Int]()
    while n > 2 {
        if n % 2 == 0 {
            for i in 0..<(n / 2) {
                temp.append(arr[i] + arr[n - i - 1])
            }
            arr = temp
            n = n / 2
        } else {
            for i in 0..<(n / 2) {
                temp.append(arr[i] + arr[n - i - 1])
            }
            temp.append(arr[n / 2] * 2)
            arr = temp
            n = (n / 2) + 1
        }
        temp = []
    }
    print("Case #\(caseT + 1):", terminator: " ")
    if arr.first! > arr.last! {
        print("Alice")
    } else {
        print("Bob")
    }
}
