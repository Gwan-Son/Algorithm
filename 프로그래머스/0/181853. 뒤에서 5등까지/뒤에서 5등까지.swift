import Foundation

func solution(_ num_list:[Int]) -> [Int] {
    return [Int](num_list.sorted()[...4])
}