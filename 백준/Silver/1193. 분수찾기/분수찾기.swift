let n = Int(readLine()!)!

func solution(_ n: Int) -> String {
    var temp = n
    var cnt = 1
    
    if temp == 1 {
        return "1/1"
    }
    
    while temp - cnt > 0 {
        temp = temp - cnt
        cnt += 1
    }
    if cnt % 2 == 0 {
        return "\(temp)/\(cnt - temp + 1)"
    } else {
        return "\(cnt - temp + 1)/\(temp)"
    }
    return ""
}

print(solution(n))