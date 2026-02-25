let str = readLine()!
let n = Int(readLine()!)!
var result = 0

for _ in 0..<n {
    let temp = readLine()!
    if temp == str {
        result += 1
    }
}
print(result)