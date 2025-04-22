while let n = readLine() {
    var n = Int(n)!
    if n == 0 {
        break
    }
	var answer = 0
    while n > 0 {
        answer += n
        n -= 1
    }
    print(answer)
}