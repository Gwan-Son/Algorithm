func solution(_ strings:[String], _ n:Int) -> [String] {
    
    var temp = strings
    
    temp.sort { t0, t1 in
        let t0n = t0[String.Index(encodedOffset: n)]
        let t1n = t1[String.Index(encodedOffset: n)]
        if(t0n == t1n) {
            return t0 < t1
        }
        return t0n < t1n
    }
    
    return temp
}

// 최적화된 코드
/*
func solution(_ strings:[String], _ n:Int) -> [String] {
    return strings.sorted{  Array($0)[n] == Array($1)[n] ? $0 < $1 :  Array($0)[n] < Array($1)[n] }
}
*/
