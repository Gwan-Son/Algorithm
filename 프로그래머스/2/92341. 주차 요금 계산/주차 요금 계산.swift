import Foundation

func solution(_ fees:[Int], _ records:[String]) -> [Int] {
    var result: [Int] = []
    var cars: [String: Int] = [:]

    let dateFormatter: DateFormatter = DateFormatter()
    dateFormatter.dateFormat = "HH:mm"

    for record in records {
        let temp = record.split(separator: " ")
        let time = dateFormatter.date(from: String(temp[0]))!
        let carNumber = String(temp[1])
        let inOut: Bool = temp[2] == "IN" ? true : false

        if inOut {
            if cars[carNumber] == nil {
                cars[carNumber] = Int(time.timeIntervalSinceNow / 60)
            } else {
                cars[carNumber]! = Int(time.timeIntervalSinceNow / 60) - cars[carNumber]!
            }
        } else {
            cars[carNumber]! = Int(time.timeIntervalSinceNow / 60) - cars[carNumber]!
        }
    }


    for car in cars.sorted(by: { $0.key < $1.key }) {
        if car.value < 0 {
            let time = Int(dateFormatter.date(from: "23:59")!.timeIntervalSinceNow / 60)
            let parkingTime = Double(time - car.value - fees[0])
            if parkingTime > 0 {
                let fee = Int(ceil(parkingTime / Double(fees[2]))) * fees[3] + fees[1]
                result.append(fee)
            } else {
                result.append(fees[1])
            }
        } else {
            let parkingTime = Double(car.value - fees[0])
            if parkingTime > 0 {
                let fee = Int(ceil(parkingTime / Double(fees[2]))) * fees[3] + fees[1]
                result.append(fee)
            } else {
                result.append(fees[1])
            }
        }
    }

    return result
}