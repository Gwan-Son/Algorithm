import Foundation

let company = readLine()!.split(separator: " ").map{ Int(String($0))! }
let request = readLine()!.split(separator: " ").map{ Int(String($0))! }

var result = 0

result += request[0] / 100 * company[0]
result += request[1] / 50 * company[1]
result += request[2] / 20 * company[2]

print(result)
