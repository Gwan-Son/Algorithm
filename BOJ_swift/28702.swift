import Foundation

var result = 0

for i in 0..<3 {
    let num = Int(readLine()!) ?? 0
    if num != 0 {
        result = num + (3 - i)
        break
    }
}

print((result % 15 == 0) ? "FizzBuzz" : (result % 3 == 0) ? "Fizz" : (result % 5 == 0) ? "Buzz" : String(result))
