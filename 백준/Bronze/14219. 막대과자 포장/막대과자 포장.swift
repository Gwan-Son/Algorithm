import Foundation

let input = readLine()!.split(separator: " ").map{ Int(String($0))! }

let n = input[0], m = input[1]

if (n * m) % 3 == 0 {
    print("YES")
} else {
    print("NO")
}
