import Foundation

func solution(_ A:[Int], _ B:[Int]) -> Int
{
    let tempA = A.sorted()
    let tempB = B.sorted(by: >)

    return zip(tempA,tempB).map{$0 * $1}.reduce(0,+)
}
