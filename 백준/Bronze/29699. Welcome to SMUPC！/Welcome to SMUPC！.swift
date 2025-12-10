import Foundation

let n = Int(readLine()!)!

let str = "WelcomeToSMUPC".map{ String($0) }

print(str[(n - 1) % str.count])
