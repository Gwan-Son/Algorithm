import Foundation

var arr = [[String]]()

let results = [
    "HEPC",
    "EPCH",
    "PCHE",
    "CHEP",
    "CPEH",
    "HCPE",
    "EHCP",
    "PEHC"
]

arr.append(readLine()!.map{ String($0) })
arr.append(readLine()!.map{ String($0) }.reversed())

var str = arr.compactMap{ $0.joined() }.joined()

if results.contains(str) {
    print("YES")
} else {
    print("NO")
}
