import Foundation

let n = Int(readLine()!)!


let prizes: [(Int, String)] = [
    (11, "A B C D E F G H J L M"),
    (9, "A C E F G H I L M"),
    (9, "A C E F G H I L M"),
    (9, "A B C E F G H L M"),
    (8, "A C E F G H L M"),
    (8, "A C E F G H L M"),
    (8, "A C E F G H L M"),
    (8, "A C E F G H L M"),
    (8, "A C E F G H L M"),
    (8, "A B C F G H L M")
]

print(prizes[n - 1].0)
print(prizes[n - 1].1)
