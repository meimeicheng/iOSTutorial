import UIKit

// MARK: - Optional
/*
 1. 變數可為nil
 2. 要取值之前，swift會要求做檢查
 */

/// 1.
var str1 : String?
//var name1 : String = nil //直接給予變數值nil會出錯
str1 = "YMW is 18 years old"

///// 2.
//var message = "get str1 : " + str1 //直接取用Optional的變數且未作檢查，Ｓwift會報錯
//
///// 2-1 強制取值
//if str1 != nil {
//    print(str1! + " and cool")
//}
///// 2-2 Option binding 取法 (參閱snippet)
////if let <#constant name#> = <#optional#> {
////    <#statements#>
////}
//if let param = str1 {
//    print("\(param) and so cool")
//}
//
//if let str1 = str1 {
//    print("\(str1) and so so cool")
//}
///// 2-3 if let 應用
//let myFont = UIFont(name: "新字體", size: 12) //字體不存在，初始化失敗回傳nil
//if let myFont = UIFont(name: "Arial", size: 12){
//    print("\(myFont) 字體存在")
//}

