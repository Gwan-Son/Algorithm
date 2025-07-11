import Foundation

while let input = readLine() {
    if input == "0" { break }

    var people = [(String, Double)]()
    for _ in 0..<Int(input)! {
        let nameAndHeight = readLine()!.split(separator: " ")
        people.append((String(nameAndHeight[0]), Double(nameAndHeight[1])) as! (String, Double))
    }
    let maxHeight = people.max{ $0.1 < $1.1 }!.1
    print(people.filter{ $0.1 == maxHeight }.map{ $0.0 }.joined(separator: " "))
}
