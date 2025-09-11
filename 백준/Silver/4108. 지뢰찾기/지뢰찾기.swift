import Foundation

while let input = readLine() {
    if input == "0 0" { break }
    let input = input.split(separator: " ").map{ Int(String($0))! }
    let r = input[0], c = input[1]
	var arr = [[String]]()
    for _ in 0..<r {
        arr.append(readLine()!.map{ String($0) })
    }
    var result = [[String]](repeating: [String](repeating: "", count: c), count: r)
    for i in 0..<r {
        for j in 0..<c {
            if arr[i][j] == "*" {
				result[i][j] = "*"
            } else {
                var count = 0
                for k in -1...1 {
                    if i + k >= 0 && i + k < r {
                        for l in -1...1 {
                            if j + l >= 0 && j + l < c {
                                if arr[i+k][j+l] == "*" {
                                    count += 1
                                }
                            }
                        }
                    }
                }
                result[i][j] = String(count)
            }
        }
    }
    for i in 0..<r {
        for j in 0..<c {
            print(result[i][j], terminator: "")
        }
        print()
    }
}
