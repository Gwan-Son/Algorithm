func solution(_ s:String) -> String {
    var temp = s.lowercased().components(separatedBy: " ")

    for i in temp.indices{
        if Int(temp[i].prefix(1)) != nil{
            continue
        } else {
            temp[i] = temp[i].capitalized
        }
    }
    return temp.joined(separator: " ")
}
