import Foundation

let n = readLine()!.map{ Int(String($0))! }

var left = 0
var right = 0

for i in 0..<n.count / 2 {
    left += n[i]
}

for i in (n.count / 2)..<n.count {
    right += n[i]
}

if left == right {
    print("LUCKY")
} else {
    print("READY")
}
