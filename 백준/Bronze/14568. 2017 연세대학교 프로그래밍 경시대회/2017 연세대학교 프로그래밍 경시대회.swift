import Foundation

guard let input = readLine(), let N = Int(input) else {
    print(0)
    exit(0)
}

var count = 0
for A in stride(from: 2, through: N-3, by: 2) {
    for B in 1...(N-A-1) {
        let C = N - A - B
        if C >= 1 && C >= B + 2 {
            count += 1
        }
    }
}

print(count) 