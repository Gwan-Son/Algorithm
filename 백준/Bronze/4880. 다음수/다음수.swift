import Foundation

while let input = readLine(), input != "0 0 0" {
    let inputArr = input.split(separator: " ").map { Int($0)! }
    if inputArr[2] - inputArr[1] == inputArr[1] - inputArr[0] {
        print("AP \(inputArr[2] + (inputArr[2] - inputArr[1]))")
    } else if inputArr[2] / inputArr[1] == inputArr[1] / inputArr[0] {
        print("GP \(inputArr[2] * (inputArr[2] / inputArr[1]))")
    }
}
