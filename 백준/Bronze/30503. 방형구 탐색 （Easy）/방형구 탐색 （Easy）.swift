import Foundation

let n = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map{ Int(String($0))! }
let q = Int(readLine()!)!

for _ in 0..<q {
    let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
    if input[0] == 1 {
        let l = input[1], r = input[2], k = input[3]
        print(arr[(l - 1)...(r - 1)].filter{ $0 == k }.count)
    } else {
        let l = input[1], r = input[2]
        for i in (l - 1)...(r - 1) {
            arr[i] = 0
        }
    }
}
