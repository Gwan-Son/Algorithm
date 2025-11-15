import Foundation

let input = readLine()!.split(separator: " ").map{ String($0) }
let n = Int(input[0])!, m = Int(input[1])!, str = input[0]

var result = String(repeating: str, count: n)

result.count > m ? print(result.prefix(m)) : print(result)
