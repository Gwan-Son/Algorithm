import Foundation

let input = readLine()!.split(separator: " ").map{ Int($0)! }

if input.reduce(0, +) >= 100 {
    print("OK")
} else {
    var univ = [(Int, Int)]()
    for i in 0..<3 {
        univ.append((input[i], i))
    }
    univ.sort(by: { $0.0 < $1.0 })
    switch univ[0].1 {
    case 0:
        print("Soongsil")
    case 1:
        print("Korea")
    case 2:
        print("Hanyang")
    default:
        break
    }
}