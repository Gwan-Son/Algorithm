var arr = [Int]()
for i in 1..<50 {
    arr.append(contentsOf: [Int](repeating: i, count: i))
}

let section = readLine()!
    .split(separator: " ")
    .map { Int($0)! }

print(
    arr[section[0] - 1...section[1] - 1]
        .reduce(0, +)
)
