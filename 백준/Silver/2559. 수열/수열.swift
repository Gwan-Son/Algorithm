import Foundation

let input = readLine()!.split(separator: " ").map{ Int(String($0))! }

let temperature = readLine()!.split(separator: " ").map{ Int(String($0))! }

if input[1] == 1 {
    print(temperature.max()!)
} else {
    var temp = temperature[0..<input[1]].reduce(0, +)
    var answer = temp
    for i in input[1]..<temperature.count {
        temp -= temperature[i - input[1]]
        temp += temperature[i]
        answer = max(answer, temp)
    }
    print(answer)
}

