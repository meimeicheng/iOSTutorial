//import UIKit

// MARK: - 宣告
/*
 1. 常數，變數定義，class
 2. arrsy , dictionary , Set
 3. function
 4. Tuples
 */
//class Recipe {
//    /// 1. 常數/變數
//    let title : String = "食譜"
//    var str1 : String = ""
//    var durarion : Int = 10
//    /// 2.陣列 字典 Set
//    var arrIngredients : [String] = ["egg","fruit"]
//    var dictSource : [String : String] = ["salt" : "1g" , "sugar" : "2g"]
//    var setCountry : Set = ["Greek", "Thai", "Thai"] //Set 不會有重複值
//
//    /// 3. function
//    func cookWay() {
//        print("mix everything")
//    }
//
//    func cookTime(machine:String) -> Int {
//        switch machine {
//        case "A":
//            return 10
//        case "A+" :
//            return 5
//        default:
//            return 10
//        }
//    }
//
//    /// 4. Tuples
//    func accomplish() -> (name: String, price: Int) {
//        return("source \(title)", 80)
//    }
//}
//
//var cookerMenu : Recipe =  Recipe()
//var country = cookerMenu.setCountry
//cookerMenu.cookWay()
//cookerMenu.cookTime(machine: "A+")
//print(" 產品 ： \(cookerMenu.accomplish().name) ,價格 ： \(cookerMenu.accomplish().price)")


//// MARK: - Optional
///*
// 1. 變數可為nil
// 2. 要取值之前，swift會要求做檢查
// */
//print("=========Optional=============")
///// 1.
//var str1 : String?
////var name1 : String = nil //直接給予變數值nil會出錯
//str1 = "assign string"
//
///// 2.
////var message = "get str1 : " + str1 //直接取用Optional的變數且未作檢查，Ｓwift會報錯
//
///// 2-1 強制取值
//if str1 != nil {
//    print("get str1 : " + str1!)
//}
///// 2-2 Option binding 取法 (參閱snippet)
////if let <#constant name#> = <#optional#> {
////    <#statements#>
////}
//if let str1 = str1 {
//    print("get str1 : " + str1)
//}
///// 2-3 if let 應用
//let myFont = UIFont(name: "新字體", size: 12) //字體不存在，初始化失敗回傳nil
//if let myFont = UIFont(name: "新字體", size: 12){
//    print("\(myFont)字體存在")
//}


//// MARK: - 泛型
///*
// 1. 約束協定 (protocol constraint)
// */
//print("=========Generic===============")
////func isEqual<T>(a:T, b:T)-> Bool {
////    return a == b //不是所有的型態都支援 ＝＝ 所以要使用約束協定來修正問題
////}
//func isEqual<T: Equatable>(a:T, b:T)-> Bool {
//    return a == b
//}
//print(isEqual(a: 12, b: 12))


//// MARK: - 屬性觀察者 Property Observers
///*
//  用來監視屬性值的變化
// */
//print("=========Property Observers====")
//class Hotel {
//    var roomCount: Int
//    var roomPrice: Int  {
//        willSet {
//            if newValue > 100 {
//                print(" your room price \(newValue) will be reset  ")
//            }
//
//        }
//        didSet {
//            if roomPrice > 1000 {
//                roomPrice = 1000
//                print(" \(oldValue) reset price to \(roomPrice)")
//            }
//        }
//    }
//
//    var totalPrice : Int {
//        get{
//
//            return roomCount * roomPrice
//        }
//        set{
//            roomPrice = Int(newValue/roomCount)
//        }
//    }
//
//    //在init中引用的參數 不會再進didSet/willSet
//    init(roomCount: Int = 5 , roomPrice : Int = 2000) {
//        self.roomCount = roomCount
//        self.roomPrice = roomPrice
//    }
//}
//
//
//var hotel = Hotel()
////hotel.roomCount = 10
////hotel.roomPrice = 3000
//print("total price : \(hotel.totalPrice)")
//print("hotel roomPrice : \(hotel.roomPrice)")


// MARK: - 錯誤處理
//do {
//    try <#throwing expression#>
//} catch <#pattern#> {
//    <#statements#>
//}
//enum CustomizeError:Error {
//    case tooYoungProblem
//    case unGraduatedProblem
//    case noReasonProblem
//}
//
//class Person {
//    func goForPSMC(age:Int, learningStatus: Bool) throws {
//
//        guard learningStatus else {
//            throw CustomizeError.unGraduatedProblem
//        }
//
//        guard age > 18 else {
//            throw CustomizeError.tooYoungProblem
//        }
//
//        guard age < 100 else {
//            throw CustomizeError.tooYoungProblem
//        }
//        print("這人有機會!")
//    }
//}
//
//
//var person : Person = Person()
//defer {
//    print("不管有無機會都要通知他")
//}
//do {
//    try person.goForPSMC(age: 20, learningStatus: false)
//}
//catch  CustomizeError.tooYoungProblem {
//    print("等他慢慢長大")
//}
//catch  {
//    print(error)
//}
//try person.goForPSMC(age: 20, learningStatus: true)











??
api -> autolayout
md
