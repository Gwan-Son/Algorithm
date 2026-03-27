let n = Int(readLine()!)!

var result = ""

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{ String($0) }
    if input[1] == "2026" {
        result = input[0]
    }
}
print(result)