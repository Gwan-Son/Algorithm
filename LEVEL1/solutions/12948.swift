import Foundation

func solution(_ phone_number:String) -> String {
    var tempString: String = ""
    if phone_number.count != 4{
        for _ in 0...(phone_number.count) - 5{
        tempString.append("*")
    }
    }
    tempString += phone_number.suffix(4)
    return tempString
}
