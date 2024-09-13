import Foundation

let input = Int(readLine()!)! // N

var numbering: Int = 0
var name: Int = 0

while numbering != input {
    var tmp = name
    while tmp >= 666 {
        if tmp % 1000 == 666 {
            numbering += 1
            break
        } else {
            tmp /= 10
        }
    }
    name += 1
}
print(name - 1)

/*
 let input = Int(readLine()!)! // N

 var name: Int = 666
 var numbering: Int = 0

 while true {
     if String(name).contains("666"){
         // contains를 사용하면 시간초과 오류가 발생함.
         numbering += 1
     }
     
     if numbering == input {
         break
     }
     name += 1
 }

 print(name)
 */
