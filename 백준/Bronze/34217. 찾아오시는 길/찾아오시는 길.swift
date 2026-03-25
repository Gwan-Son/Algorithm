let ab = readLine()!.split(separator: " ").map{ Int(String($0))! }
let cd = readLine()!.split(separator: " ").map{ Int(String($0))! }

let hanyang = ab[0] + cd[0]
let yongdap = ab[1] + cd[1]

if hanyang == yongdap {
    print("Either")
} else if hanyang > yongdap {
    print("Yongdap")
} else {
    print("Hanyang Univ.")
}