import Foundation

func solve() {
    guard let _ = readLine() else { return }

    guard let encryptedLine = readLine() else { return }
    let encryptedNumbers = encryptedLine.split(separator: " ").compactMap { Int($0) }

    guard let originalLine = readLine() else { return }

    var originalFrequencies = Array(repeating: 0, count: 53)
    var decryptedFrequencies = Array(repeating: 0, count: 53)

    func characterToIndex(_ char: Character) -> Int {
        let asciiValue = char.asciiValue!

        switch char {
        case " ":
            return 0
        case "A"..."Z":
            return Int(asciiValue - Character("A").asciiValue! + 1)
        case "a"..."z":
            return Int(asciiValue - Character("a").asciiValue! + 27)
        default:
            return -1
        }
    }

    func numberToIndex(_ number: Int) -> Int {
        return number
    }

    for char in originalLine {
        let index = characterToIndex(char)
        if index >= 0 {
            originalFrequencies[index] += 1
        }
    }

    for number in encryptedNumbers {
        let index = numberToIndex(number)
        decryptedFrequencies[index] += 1
    }

    if originalFrequencies == decryptedFrequencies {
        print("y")
    } else {
        print("n")
    }
}

solve()
