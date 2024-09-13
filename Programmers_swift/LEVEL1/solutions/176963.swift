import Foundation

func solution(_ name:[String], _ yearning:[Int], _ photo:[[String]]) -> [Int] {
    var result: [Int] = Array(repeating: 0, count: photo.count)

    for (idx, photo) in photo.enumerated() {

        for i in photo {
            if let index = name.firstIndex(of: i) {
                result[idx] += yearning[index]
            }
        }
    }
    
    return result
}
