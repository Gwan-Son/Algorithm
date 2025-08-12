import Foundation

if let firstLetter = readLine() {
    switch firstLetter {
    case "M":
        print("MatKor")
    case "W":
        print("WiCys")
    case "C":
        print("CyKor")
    case "A":
        print("AlKor")
    case "$":
        print("$clear")
    default:
        break
    }
}
