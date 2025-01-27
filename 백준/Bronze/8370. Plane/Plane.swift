let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
let answer = (input[0] * input[1]) + (input[2] * input[3])
print(answer)