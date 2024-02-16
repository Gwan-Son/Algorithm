func solution(_ num:Int) -> Int {
    if num == 1 {
        return 0
    }
    var temp = num
    var cnt = 0
    
    while temp > 1 {
        if temp.isMultiple(of: 2){
            temp /= 2
        } else {
            temp = temp*3 + 1
        }
        cnt += 1
        if cnt > 500 {
            cnt = -1
            break
        }
    }
    return cnt
}
