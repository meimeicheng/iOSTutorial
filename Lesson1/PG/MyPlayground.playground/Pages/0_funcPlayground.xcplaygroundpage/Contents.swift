// func <#name#>(<#parameters#>) -> <#return type#> {
//    <#function body#>
// }

////1. func with labels
//func add(x: Int, y:Int) -> Int {
//    return x + y
//}
//print(add(x: 1, y: 2))
//print(add(1,2))

////2. func without labels
//func add(_ x:Int,_ y:Int) -> Int {
//    return x+y
//}
//print(add(1,2))

////3. 參數外部參考
//func square(W width:Int,H height:Int) -> Int {
//    return width * height
//}
//square(W: 10, H: 10)


////4. 參數預設值
//func add(x: Int, y:Int = 1) -> Int {
//    return x + y
//}
//print(add(x: 1))
//print(add(x: 1, y: 5))

////5. 可變參數
//func add(_ numbers: Int...) -> Int {
//    var result = 0
//    for number in numbers {
//        result = result+number
//    }
//    return result
//}
//print(add(1,2,3,4))

////6. 傳遞參考
//func add( x: inout Int, y:Int){
//    x += y
//}
//var result = 1
//add(x: &result, y: 2)
//print(result)

////7. func當參數
//func add( x: Int , y:Int) -> Int{
//    return x + y
//}
//func sub( x: Int , y:Int) -> Int{
//    return x - y
//}
//func cal( x: Int , y:Int , action: (Int,Int)->Int) -> Int{
//    return action(x,y)
//}
//
//var addResult = cal(x: 10, y: 3, action: add)
//var subResult = cal(x: 10, y: 3, action: sub)
