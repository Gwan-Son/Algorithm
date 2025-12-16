let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
print(min(input[0], input[1]))