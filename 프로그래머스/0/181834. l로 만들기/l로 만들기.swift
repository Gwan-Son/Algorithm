import Foundation

func solution(_ myString:String) -> String {
    let changeChar = ["a","b","c","d","e","f","g","h","i","j","k"]
    var result = myString
    for i in changeChar {
        result = result.replacingOccurrences(of: i, with: "l")
    }
    return result
}