import Foundation

let directions = ["N", "E", "S", "W"]

var currentDir = 0

for _ in 0..<10 {
    let input = Int(readLine()!)!
    if input == 1 {
        currentDir = (currentDir + 1) % 4
    } else if input == 2 {
		currentDir = (currentDir + 2) % 4
    } else {
        currentDir = (currentDir + 3) % 4
    }
}

print(directions[currentDir])