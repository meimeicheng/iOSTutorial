

/// 1. 宣告方式
//var str1 = "this is string"         //變數
//var int1 = 10
//var str2: String = "指定形態的變數"
//var const1 = "this is constant"     //常數
//const1 = "ddd"
//var employee =  (dept: "AC30", name: "YMW", age: 18) //tuples
//
//print(employee.name)
//print(employee.age)

///// 2. 陣列 字典 Set
//var arrName : [String] = ["A000","B000"]
//var dictName : [String : Int] = ["A000" : 1 , "B000" : 2]
//var setName : Set = ["A000", "A000", "B000"] //Set 不會有重複值
//
////arrName.append("C000")
////print(arrName[arrName.count-1])
//print(setName.count)
//setName
//
//
///// 3. Class
class Person {
    func action() -> String {
        return "會動"
    }
}

var man: Person = Person()
print(man.action())

////Class 繼承
class Employee : Person{
    override func action() -> String {
        return "會寫程式"
    }
}

var man2 : Employee = Employee()
print(man2.action())

