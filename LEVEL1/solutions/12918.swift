func solution(_ s:String) -> Bool {
    var arr = Array(s).sorted(by: >)
    return ((arr.count == 6)||(arr.count == 4))&&(arr[0].wholeNumberValue != nil) ? true : false
}
