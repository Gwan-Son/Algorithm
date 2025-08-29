import Foundation

let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
let sum = input[0], diff = input[1]

let a = (sum + diff) / 2
let b = (sum - diff) / 2

if (sum + diff) % 2 != 0 || (sum - diff) % 2 != 0 {
    print(-1)
} else {
    if a >= 0 && b >= 0 {
        if a >= b {
            print(a,b)
        } else {
            print(b, a)
        }
    } else {
        print(-1)
    }
}