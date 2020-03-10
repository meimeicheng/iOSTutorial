import UIKit

// MARK: - Generic
/*
 1. 約束協定 (protocol constraint)
 */

func swapAnything<T>(_ a: inout T, _ b: inout T) {
    let temporaryB = b
    b = a
    a = temporaryB
}

var patern1 = "Happy"
var patern2 = "New Year"

swapAnything(&patern1, &patern2)
print(patern1) // New Year
print(patern2) // Happy

//func isEqual<T>(a:T, b:T)-> Bool {
//    return a == b //不是所有的型態都支援 ＝＝ 所以要使用約束協定來修正問題
//}
func isEqual<T: Equatable>(a:T, b:T)-> Bool {
    return a == b
}
print(isEqual(a: 12, b: 12))


