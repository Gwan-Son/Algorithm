import Foundation

let input = readLine()!
let names: [String: String] = [
    "NLCS" : "North London Collegiate School",
    "BHA" : "Branksome Hall Asia",
    "KIS" : "Korea International School",
    "SJA" : "St. Johnsbury Academy"
]

print(names[input] ?? "")
