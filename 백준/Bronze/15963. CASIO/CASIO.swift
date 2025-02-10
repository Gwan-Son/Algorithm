import Foundation

let input = readLine()!.split(separator: " ").map{ Int($0)! }
input[0] == input[1] ? print(1) : print(0)