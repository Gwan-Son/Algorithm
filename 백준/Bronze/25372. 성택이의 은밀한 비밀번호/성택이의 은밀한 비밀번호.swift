let n = Int(readLine()!)!
for _ in 0..<n {
    let password = readLine()!
    print((6...9) ~= password.count ? "yes" : "no")
}
