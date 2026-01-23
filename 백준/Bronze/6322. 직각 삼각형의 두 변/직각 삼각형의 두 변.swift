import Foundation

var count = 1

while let input = readLine() {
    let parts = input.split(separator: " ")
    if parts.count != 3 { continue }
    guard let aIn = Double(parts[0]), let bIn = Double(parts[1]), let cIn = Double(parts[2]) else { continue }

    if aIn == 0 && bIn == 0 && cIn == 0 { break }

    print("Triangle #\(count)")

    var possible = true
    var resultName = ""
    var resultValue: Double = 0.0

    if aIn == -1 {
        if cIn <= bIn {
            possible = false
        } else {
            let diff = cIn * cIn - bIn * bIn
            if diff <= 0 {
                possible = false
            } else {
                resultName = "a"
                resultValue = sqrt(diff)
            }
        }
    } else if bIn == -1 {
        if cIn <= aIn {
            possible = false
        } else {
            let diff = cIn * cIn - aIn * aIn
            if diff <= 0 {
                possible = false
            } else {
                resultName = "b"
                resultValue = sqrt(diff)
            }
        }
    } else if cIn == -1 {
        // c = sqrt(a^2 + b^2)
        let sum = aIn * aIn + bIn * bIn
        resultName = "c"
        resultValue = sqrt(sum)
    } else {
        possible = false
    }

    if possible {
        print("\(resultName) = \(String(format: "%.3f", resultValue))")
    } else {
        print("Impossible.")
    }

    print("")
    count += 1
}
