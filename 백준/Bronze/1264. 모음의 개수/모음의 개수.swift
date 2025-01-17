import Foundation

let moeum = ["a", "A", "e", "E", "i", "I", "o", "O", "u", "U"]

while true {
    let input = readLine()!
    if input == "#" { break }
    print(input.filter{ moeum.contains(String($0)) }.count)
}
