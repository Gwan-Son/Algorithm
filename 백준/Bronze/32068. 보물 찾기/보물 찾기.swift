import Foundation

let n = Int(readLine()!)!

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let l = input[0], r = input[1], s = input[2]
    let ls = abs(s - l)
    let rs = abs(r - s)
    if ls >= rs { // rs
		print(rs * 2)
    } else { // ls
		print(ls * 2 + 1)
    }
}
