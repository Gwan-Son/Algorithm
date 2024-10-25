import Foundation

func solution(_ babbling:[String]) -> Int {
    var answer = 0
    
    for bab in babbling {
        var bab = bab
        var currentWord = ""
        var stopPoint = false
        while !bab.isEmpty && !stopPoint {
            let firstword = bab.first
            switch firstword {
            case "a":
                if bab.prefix(3) == "aya" && currentWord != "aya" {
                    bab.removeFirst(3)
                    currentWord = "aya"
                } else {
                    stopPoint = true
                }
            case "y":
                if bab.prefix(2) == "ye" && currentWord != "ye" {
                    bab.removeFirst(2)
                    currentWord = "ye"
                } else {
                    stopPoint = true
                }
            case "w":
                if bab.prefix(3) == "woo" && currentWord != "woo" {
                    bab.removeFirst(3)
                    currentWord = "woo"
                } else {
                    stopPoint = true
                }
            case "m":
                if bab.prefix(2) == "ma" && currentWord != "ma" {
                    bab.removeFirst(2)
                    currentWord = "ma"
                } else {
                    stopPoint = true
                }
            case nil:
                stopPoint = true
            default:
                stopPoint = true
            }
        }
        
        
        if bab.isEmpty {
            answer += 1
        }
    }
    return answer
}