import Foundation

func solution(_ my_string:String) -> String {
    var arr = my_string.lowercased().map{ String($0) }
    return arr.sorted().joined()
}