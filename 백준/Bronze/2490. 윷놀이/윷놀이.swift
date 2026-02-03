for _ in 0..<3 {
    let input = readLine()!.split(separator: " ").map({ Int(String($0))! }).filter{ $0 == 0 }.count
    switch input {
    case 0:
        print("E")
    case 1:
        print("A")
    case 2:
        print("B")
    case 3:
        print("C")
    case 4:
        print("D")
    default:
        continue
    }
}