let n = Int(readLine()!)!

let a = readLine()!.split(separator: " ").map{ String($0) }.joined()
let b = readLine()!.split(separator: " ").map{ String($0) }.joined()

print(min(Int(a)!, Int(b)!))