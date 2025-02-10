import Foundation

while let input = readLine() {
    let temp = input.split(separator: " ").map{ Int($0)! }
    print(temp[1] / (temp[0] + 1))
}