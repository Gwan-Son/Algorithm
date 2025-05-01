import Foundation

var answer = 0
while let input = readLine() {
	let input = Int(input)!
    if input == -1 { break }
    answer += input
}
print(answer)