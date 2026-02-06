if let input = readLine() {
    let vowels = ["a", "e", "i", "o", "u"]
    let arr = input.map{ String($0) }
    
    var i = 0
    var res = ""
    while i < arr.count {
        res += arr[i]
        i += vowels.contains(arr[i]) ? 3 : 1
    }
    print(res)
}