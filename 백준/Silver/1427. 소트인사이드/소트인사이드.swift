import Foundation

var N = readLine()!.map { Int(String($0))! }

N.sort(by: >)

print(N.map{ String($0) }.joined())
