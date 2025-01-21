let S = readLine()!.map{ String($0) }
var arr = Set<String>()

for i in 0..<S.count {
    var temp = ""
    for j in i..<S.count {
        temp += String(S[j])
        arr.insert(temp)
    }
}

print(arr.count)
