import Foundation

let str = readLine()!.map{ String($0) }
switch str.first! {
case "F":
    print("Foundation")
case "C":
    print("Claves")
case "V":
    print("Veritas")
case "E":
    print("Exploration")
default:
    break
}
