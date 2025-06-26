import Foundation

func solve(for area: Int64) -> Int64 {
    let sqrtN = Int64(sqrt(Double(area)))
    let x = max(1, sqrtN - 1)
    let y = max(1, (area - 1) / (x + 1))

    return (x + y) * 2
}

if let input = readLine(), let N = Int64(input) {
    let result = solve(for: N)
    print(result)
}
