let n = Int(readLine()!)!
var count = 0
for _ in 0..<n {
    let input = readLine()!.map{ String($0) }.count
    count += input
}
print(count)