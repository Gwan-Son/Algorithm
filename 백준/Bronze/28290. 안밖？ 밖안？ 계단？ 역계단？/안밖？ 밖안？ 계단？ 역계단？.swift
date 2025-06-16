import Foundation

let s = readLine()!

if s == "fdsajkl;" || s == "jkl;fdsa" {
    print("in-out")
} else if s == "asdf;lkj" || s == ";lkjasdf" {
    print("out-in")
} else if s == "asdfjkl;" {
    print("stairs")
} else if s == ";lkjfdsa" {
    print("reverse")
} else {
    print("molu")
}