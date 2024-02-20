func solution(_ s:String) -> String {
    var temp = s.components(separatedBy: " ")
    for i in 0..<temp.count{
        var arr = temp[i].map{String($0)}
        for j in 0..<arr.count{
            if j % 2 == 0{
                arr[j] = arr[j].uppercased()
            } else {
                arr[j] = arr[j].lowercased()
            }
        }
        temp[i] = arr.joined()
    }
    return temp.joined(separator: " ")
}
