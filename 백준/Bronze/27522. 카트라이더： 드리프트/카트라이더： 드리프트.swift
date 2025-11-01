import Foundation

var times = [(String, String)]()
var red = 0
var blue = 0

for _ in 0..<8 {
    let line = readLine()!.split(separator: " ").map{ String($0) }
    times.append((line[0], line[1]))
}

times.sort{ $0.0 < $1.0 }

for i in 0..<8 {
    if times[i].1 == "R" {
        if i == 0 {
            red += 10
        } else if i == 1 {
            red += 8
        } else if i == 2 {
            red += 6
        } else {
            red = red + (8 - i)
        }
    } else {
        if i == 0 {
            blue += 10
        } else if i == 1 {
            blue += 8
        } else if i == 2 {
            blue += 6
        } else {
            blue = blue + (8 - i)
        }
    }
}

print(red > blue ? "Red" : "Blue")
