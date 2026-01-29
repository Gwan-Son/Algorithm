while let input = readLine() {
    let numbers = input.map{ String($0) }
    if numbers[0] == "0" && numbers.count == 1 { break }
    
    var result = numbers.count + 1
    for i in 0..<numbers.count {
        if numbers[i] == "1" {
            result += 2
        } else if numbers[i] == "0" {
            result += 4
        } else {
            result += 3
        }
    }
    print(result)
}