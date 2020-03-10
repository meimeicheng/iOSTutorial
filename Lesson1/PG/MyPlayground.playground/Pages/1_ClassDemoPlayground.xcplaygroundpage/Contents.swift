
// MARK: - 宣告
/*
 1. 常數，變數定義，class
 2. arrsy , dictionary , Set
 3. function
 4. Tuples
 */
class Food {
    func cookedble(name: String) -> Bool {
        return true
    }
}
class Recipe : Food{
    /// 1. 常數/變數
    let title : String = "食譜"
    var str1 : String = ""
    var durarion : Int = 10
    /// 2.陣列 字典 Set
    var arrIngredients : [String] = ["egg","fruit"]
    var dictSource : [String : String] = ["salt" : "1g" , "sugar" : "2g"]
    var setCountry : Set = ["Greek", "Thai", "Thai"] //Set 不會有重複值

    /// 3. function
    func cookWay() {
        print("mix everything")
    }

    func cookTime(machine:String) -> Int {
        switch machine {
        case "A":
            return 10
        case "A+" :
            return 5
        default:
            return 10
        }
    }

    /// 4. Tuples
    func accomplish() -> (name: String, price: Int) {
        return("source \(title)", 80)
    }
    
    override func cookedble(name: String) -> Bool {
        switch name {
        case "meat":
            return true
        default:
            return false
        }
    }
}

var cookerMenu : Recipe =  Recipe()
var country = cookerMenu.setCountry
cookerMenu.cookWay()
cookerMenu.cookTime(machine: "A+")
print(" 產品 ： \(cookerMenu.accomplish().name) ,價格 ： \(cookerMenu.accomplish().price)")


