import Foundation

func solution(_ my_string:String, _ num1:Int, _ num2:Int) -> String {
    let temp = Array(my_string)
    var result = temp
    result[num1] = temp[num2]
    result[num2] = temp[num1]
    return result.map{ String($0) }.joined()
}