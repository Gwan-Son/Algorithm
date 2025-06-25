import Foundation

let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
let n = input[0], m = input[1]

if m == 1 || m == 2 {
    print("NEWBIE!")
} else if m <= n {
    print("OLDBIE!")
} else {
    print("TLE!")
}