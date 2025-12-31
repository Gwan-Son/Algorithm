let n = Int(readLine()!)!

while let input = readLine() {
    let number = Int(input)!
    if number == 0 { break }
    
    if number % n == 0 {
        print("\(number) is a multiple of \(n).")
    } else {
        print("\(number) is NOT a multiple of \(n).")
    }
}