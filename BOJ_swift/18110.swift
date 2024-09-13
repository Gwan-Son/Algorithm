import Foundation

let N = Int(readLine()!)!
if N == 0 {
    print(0)
} else {
    let roundedN = Int((Double(N) * 0.15).rounded())
    var difficulties: [Double] = []
    for _ in 0..<N {
        difficulties.append(Double(readLine()!)!)
    }
    difficulties.sort()
    difficulties.removeFirst(roundedN)
    difficulties.removeLast(roundedN)
    print(Int(((difficulties.reduce(0){ $0 + $1 }) / Double(difficulties.count)).rounded()))
}
