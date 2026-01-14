var meter = 0

for _ in 0..<4 {
    let temp = Int(readLine()!)!
    meter += temp
}

if meter <= 1500 {
    print("Yes")
} else {
    print("No")
}