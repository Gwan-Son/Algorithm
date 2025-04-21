import Foundation

var catalanArr = [Int64](repeating: 0, count: 31)
func catalan(){
    catalanArr[0] = 1
    for i in 1...30 {
        for j in 0..<i {
            catalanArr[i] += catalanArr[j] * catalanArr[i - 1 - j]
        }
    }
}

catalan()

while let n = readLine() {
    if Int(n)! == 0 {
        break
    }
    print(catalanArr[Int(n)!])
}