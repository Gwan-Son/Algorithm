import Foundation

func solution(_ str_list:[String], _ ex:String) -> String {
    var result = ""
    for i in str_list {
        if !i.contains(ex) {
            result += i
        }
    }
    return result
}