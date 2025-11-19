import Foundation

var arr = [Int]()

for _ in 0..<9 {
    arr.append(Int(readLine()!)!)
}

func dfs(_ sum: Int, _ idx: Int, _ nums: [Int]) {
    if sum == 100 && nums.count == 7 {
        nums.forEach {
            print($0)
        }
        exit(0)
    }

    for i in idx+1..<9 {
        dfs(sum + arr[i], i, nums + [arr[i]])
    }
}


for i in 0..<3 {
    dfs(arr[i], i, [arr[i]])
}
