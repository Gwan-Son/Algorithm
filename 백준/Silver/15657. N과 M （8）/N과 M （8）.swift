let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
let N = input[0]; let M = input[1]
let arr = readLine()!.split(separator: " ").map{ Int(String($0))! }.sorted()

func dfs(_ tempArr: [Int], _ start: Int) {
    if tempArr.count == M {
        tempArr.forEach({
            print($0, terminator: " ")
        })
        print()
        return
    }
    
    for i in start..<arr.count {
        dfs(tempArr + [arr[i]], i)
    }
}

for i in 0..<arr.count {
    dfs([arr[i]], i)
}