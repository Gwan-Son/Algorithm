import Foundation

var arr = [Int](repeating: 0, count: 123456 * 2 + 1)
var primeArr = [Int]()
func mkPrime() {
    for i in 2...(123456 * 2) {
        arr[i] = i
    }
    
    for i in 2...(123456 * 2) {
        if arr[i] == 0 { continue }
        for i in stride(from: i * 2, through: 123456 * 2, by: i) {
            arr[i] = 0
        }
    }
    
    for i in 2...(123456 * 2) {
        if arr[i] != 0 {
            primeArr.append(arr[i])
        }
    }
}

mkPrime()

while let input = readLine() {
    let num = Int(input)!
    if num == 0 { break }
    print(primeArr.filter { $0 > num && $0 <= num * 2}.count)
}