import Foundation

func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
    var result: [Int] = Array(repeating: 0, count: id_list.count)

    var report_list: [String: [String]] = [:] // 신고당한 횟수(유저)
    var user_list: [String: [String]] = [:] // 신고한 횟수(유저)

    for id in id_list {
        report_list[id] = []
        user_list[id] = []
    }

    for r in report {
        let list = r.split(separator: " ")
        // list[0] 신고한 사람
        // list[1] 신고당한 사람
        if !user_list[String(list[0])]!.contains(String(list[1])) {
            user_list[String(list[0])]!.append(String(list[1]))
            report_list[String(list[1])]!.append(String(list[0]))
        }
    }

    let bannedUser = report_list.filter{ $0.value.count >= k }
    bannedUser.forEach { (key, value) in
        for v in value {
            let index = id_list.firstIndex(of: v)!
            result[index] += 1
        }
    }
    return result
}