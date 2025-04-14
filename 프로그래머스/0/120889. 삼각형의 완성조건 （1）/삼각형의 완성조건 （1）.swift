import Foundation

func solution(_ sides:[Int]) -> Int {
    if sides.reduce(0, +) - sides.max()! > sides.max()! {
        return 1
    } else {
        return 2
    }
}