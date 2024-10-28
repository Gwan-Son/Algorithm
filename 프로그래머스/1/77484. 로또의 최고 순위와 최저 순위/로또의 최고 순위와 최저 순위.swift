import Foundation

func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
    // 1 - 6, 2 - 5, 3 - 4, 4 - 3, 5 - 2, 6 - other
    var zero_count = 0
    var count = 0

    for lotto in lottos {
        if lotto == 0 {
            zero_count += 1
        } else {
            for win_num in win_nums {
                if lotto == win_num {
                    count += 1
                }
            }
        }
    }
    if count == 0 && zero_count == 6 {
        return [1,6]
    } else if count == 0 {
        return [6, 6]
    } else {
        return [max(6 - count - zero_count + 1, 1), max(6 - count + 1, 1)]
    }
}