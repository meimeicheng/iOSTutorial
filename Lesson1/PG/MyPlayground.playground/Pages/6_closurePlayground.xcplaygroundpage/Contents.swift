// MARK: - Closure
/*
 Closure是一個沒有名字的函數
 類型表示為（parameters）-> returnType
 */

//1. func 與 closure 結構比較
//func funcname(parameters) -> <#return type#> {
//    statements
//}

//{ (parameters) -> <#return type#> in
//    statements
//}

//2. assign closure to var/let
var defaultPrint = { (string) -> Void in
    print(string + "test")
}
defaultPrint("this is ")

func myFunction(_ stringParameter: String, closureParameter: (String) -> Void) {
    closureParameter(stringParameter)
}


myFunction("Hello, world!", closureParameter: {(string) in
    print(string)
})

myFunction("Hello ~~"){(string) in
    print(string) //Trailing closure syntax允許我們消除函數中closure參數周圍的括號，但前提是它為最後一個參數
}


let mapNumbers = [1, 2, 3, 4, 5]
let doubledMapNumbers = mapNumbers.filter({$0 > 4})
print(doubledMapNumbers)
