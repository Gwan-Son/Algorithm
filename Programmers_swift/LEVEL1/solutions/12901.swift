import Foundation

func solution(_ a:Int, _ b:Int) -> String {
    var dateComponents = DateComponents()
    dateComponents.year = 2016
    dateComponents.month = a
    dateComponents.day = b
    let calendar = Calendar.current
    if let date = calendar.date(from: dateComponents) {
        let dateFormaater = DateFormatter()
        dateFormaater.dateFormat = "E"
        let weekday = dateFormaater.string(from: date)

        return weekday.uppercased()
    } else {
        return ""
    }
}
