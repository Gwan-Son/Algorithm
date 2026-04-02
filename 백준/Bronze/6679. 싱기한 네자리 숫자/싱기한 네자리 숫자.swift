import Foundation

for base in 1000...9999 {
    var temp = base
    var dec = 0
    var doz = 0
    var hex = 0
    
    while temp / 10 != 0 {
        dec += temp % 10
        temp /= 10
    }
    dec += temp
    
    temp = base
    while temp / 12 != 0 {
        doz += temp % 12
        temp /= 12
    }
    doz += temp
    
    if dec != doz { continue }
    
    temp = base
    while temp / 16 != 0 {
        hex += temp % 16
        temp /= 16
    }
    hex += temp
    
    if dec != hex { continue }
    print(base)
    
}
