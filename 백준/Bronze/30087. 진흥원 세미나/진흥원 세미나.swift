import Foundation

let n = Int(readLine()!)!

let room = [
    "Algorithm": "204",
    "DataAnalysis": "207",
    "ArtificialIntelligence": "302",
    "CyberSecurity": "B101",
    "Network": "303",
    "Startup": "501",
    "TestStrategy": "105"
]

for _ in 0..<n {
    let input = readLine()!
	print(room[input] ?? "Not Found")
}
