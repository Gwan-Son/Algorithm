func selfNumber(_ number: Int) -> Int {
    var num = number
    var sum = number
    
    while num != 0 {
        sum = sum + (num % 10)
        num = num / 10
    }
    
    return sum
}

var n = 0

var result: [Bool] = Array(repeating: false, count: 10001)

for i in 1...100000 {
    n = selfNumber(i)
    
    if n < 10001 {
        result[n] = true
    }
}

for i in 1...10000 {
    if !result[i] {
        print(i)
    }
}
