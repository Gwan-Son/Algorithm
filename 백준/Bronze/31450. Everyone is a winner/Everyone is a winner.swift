let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
let a = input[0], b = input[1]
a % b == 0 ? print("Yes") : print("No")