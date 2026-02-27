import Foundation

let str = readLine()!.split(separator: " ").map{ String($0) }

let digital_humanities = ["social", "history", "language", "literacy"]
let public_bigdata = ["bigdata", "public", "society"]

for i in 0..<digital_humanities.count {
    if str.contains(digital_humanities[i]) {
        print("digital humanities")
        exit(0)
    }
}

for i in 0..<public_bigdata.count {
    if str.contains(public_bigdata[i]) {
        print("public bigdata")
        exit(0)
    }
}
