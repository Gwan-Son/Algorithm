import Foundation

func solution(_ my_string:String) -> String {
    let moum = ["a", "e", "i", "u", "o"]

    return my_string.filter{ !moum.contains((String($0)))}
}