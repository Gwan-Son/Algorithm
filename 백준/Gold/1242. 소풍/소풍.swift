import Foundation

func solve() {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    var N = input[0]
    let K = input[1]
    var M = input[2]

    var count = 0
    var target = K % N
    if target == 0 {
        target = N
    }

    while true {
        count += 1
        if target == M {
            break
        }

        if M - target > 0 {
            M -= target
        } else {
            M = N + (M - target)
        }

        N -= 1

        if N > 0 {
            target = K % N
            if target == 0 {
                target = N
            }
        }
    }

    print(count)
}

solve()
