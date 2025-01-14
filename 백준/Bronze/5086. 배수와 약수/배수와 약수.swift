import Foundation

while true {
    let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
    if input[0] == 0 && input[1] == 0 { exit(0) }
    let n = input[0]
    let m = input[1]
    if n > m {
        if n % m == 0 {
            print("multiple")
        } else {
            print("neither")
        }
    } else {
        if m % n == 0 {
            print("factor")
        } else {
            print("neither")
        }
    }
}
