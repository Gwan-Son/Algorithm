import Foundation

let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
let T = input[0]; let S = input[1]

if S == 1 {
    print(280)
} else if (12...16) ~= T {
    print(320)
} else {
    print(280)
}