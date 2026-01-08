import Foundation

var str = readLine()!
let change = readLine()!.map{ String($0) }

for i in 0..<change.count {
    if str.contains(change[i]) {
        str = str.replacingOccurrences(of: change[i], with: change[i].lowercased())
    }
}

print(str)
