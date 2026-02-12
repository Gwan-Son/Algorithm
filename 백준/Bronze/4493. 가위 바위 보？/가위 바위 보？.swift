import Foundation

let t = Int(readLine()!)!

for _ in 0..<t {
    let n = Int(readLine()!)!
    var player1 = 0
    var player2 = 0
    
    for _ in 0..<n {
        let str = readLine()!.split(separator: " ").map{ Character(String($0)) }
        let a = str[0].asciiValue!
        let b = str[1].asciiValue!
        
        if a == 80 {
            if b == 83 {
                player2 += 1
            } else if b == 82 {
                player1 += 1
            }
        } else if a == 82 {
            if b == 80 {
                player2 += 1
            } else if b == 83 {
                player1 += 1
            }
        } else if a == 83 {
            if b == 82 {
                player2 += 1
            } else if b == 80 {
                player1 += 1
            }
        }
    }
    
    if player1 == player2 {
        print("TIE")
    } else {
        print("Player", terminator: " ")
        print(player1 > player2 ? 1 : 2)
    }
}
