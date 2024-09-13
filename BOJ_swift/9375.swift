import Foundation

let T = Int(readLine()!)!

for _ in 0..<T {
    let input = Int(readLine()!)!
    var dict = [String:Int]()
    for _ in 0..<input {
        let wear = readLine()!.split(separator: " ").map{ String($0) }
        dict[wear[1]] = (dict[wear[1]] ?? 0) + 1
    }
    print(dict.values.reduce(1){ $0 * ($1 + 1)} - 1)
}
