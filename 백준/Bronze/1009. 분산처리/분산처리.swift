import Foundation

if let n = Int(readLine()!) {
    for _ in 0..<n {
        let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
		let a = input[0]
        let b = input[1]
        var result = 1
        for _ in 0..<b {
            result = result * a % 10
        }

        print(result == 0 ? 10 : result)
    }
}