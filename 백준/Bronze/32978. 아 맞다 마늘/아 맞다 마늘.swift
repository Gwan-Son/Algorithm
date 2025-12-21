import Foundation

let n = Int(readLine()!)!

var arr: [String] = readLine()!.split(separator: " ").map{ String($0) }.sorted()

let hyeonbin: [String] = readLine()!.split(separator: " ").map{ String($0) }.sorted()

for i in 0..<(n - 1) {
    if arr.contains(hyeonbin[i]) {
        arr.removeAll { $0 == hyeonbin[i] }
    }
}

print(arr.first!)
