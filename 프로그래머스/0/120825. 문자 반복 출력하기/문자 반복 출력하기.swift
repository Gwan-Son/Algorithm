import Foundation

func solution(_ my_string:String, _ n:Int) -> String {
    var answer = ""

    for i in my_string {
        answer += String(repeating: String(i), count: n)
    }
    return answer
}