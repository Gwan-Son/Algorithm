let arr = readLine()!.split(separator: " ").map{CLongLong(String($0))!}
let A = arr[0]
let B = arr[1]
let C = arr[2]

print(A+B+C)
