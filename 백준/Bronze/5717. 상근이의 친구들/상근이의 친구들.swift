while let input = readLine() {
    let input = input.split(separator: " ").map{ Int(String($0))! }
    if input[0] == 0 && input[1] == 0 { break }
    print(input.reduce(0, +))
}