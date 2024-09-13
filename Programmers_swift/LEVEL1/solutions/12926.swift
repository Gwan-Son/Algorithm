func solution(_ s:String, _ n:Int) -> String {
    var result: String = ""
    for i in s{
        var temp = i.asciiValue!
        if temp == 32{
            result += String(i)
            continue
        }
        if temp >= 65 && temp <= 90{
            temp += UInt8(n)
            if temp > 90 {
                temp -= 26
            }
        } else{
            temp += UInt8(n)
            if temp > 122 {
                temp -= 26
            }
        }

        result += String(Unicode.Scalar(temp))
    }
    return result
}
