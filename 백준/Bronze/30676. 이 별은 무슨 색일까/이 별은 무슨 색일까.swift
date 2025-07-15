import Foundation

let n = Int(readLine()!)!

switch n {
case (620...780):
    print("Red")
    break
case (590..<620):
    print("Orange")
    break
case (570..<590):
    print("Yellow")
    break
case (495..<570):
    print("Green")
    break
case (450..<495):
    print("Blue")
    break
case (425..<450):
    print("Indigo")
    break
case (380..<425):
    print("Violet")
    break
default:
    print("Error")
}
