import Foundation

let fac = [1, 2, 6, 24, 120]

while let input = readLine() {
    if input == "0" { break }

	var result = 0
    for (i, e) in input.reversed().enumerated() {
        result += Int(String(e))! * fac[i]
    }

    print(result)
}
