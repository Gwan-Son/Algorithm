import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0]
let l = input[1]

if n == 0 {
    print(0)
} else {
    var locations = readLine()!.split(separator: " ").map { Int(String($0))! }
    locations.sort()
    var tapeCount = 1
    var tapeEndPoint = Double(locations[0]) - 0.5 + Double(l)
    for i in 1..<n {
        let currentLeakLocation = Double(locations[i])
        if currentLeakLocation - 0.5 >= tapeEndPoint {
            tapeCount += 1
            tapeEndPoint = currentLeakLocation - 0.5 + Double(l)
        }
    }

    print(tapeCount)
}
