func connect(str1: String, str2: String) -> String{
    return str2 + " " + str1
}

func say(name: String, myFunction:(String, String) -> String) -> String {
    let greet = "Hi"
    var str = myFunction(name, greet)
    return str
}

//1. 傳入func
print(say(name: "Apple (with clear functio name)", myFunction: connect))

//2. closure
print(say(name: "Apple (with clousure)", myFunction: {(str1: String, str2: String) -> String in return str2 + " " + str1 }))

//3. closure - 根據上下文推斷
print(say(name: "Apple (with type inference clousure)", myFunction: {str1, str2 in return str2 + " " + str1 }))

//4. closure - 隱含返回
print(say(name: "Apple (with implicit return clousure)", myFunction: {str1, str2 in str2 + " " + str1 }))

//5. closure - 參數縮寫
print(say(name: "Apple (with shorthend argument clousure)", myFunction: { $1 + " " + $0 }))

print(say(name: "Apple ", myFunction: +))

//6. closure - 尾隨閉包
print(say(name: "Apple (with trailing closure) "){
//    $1 + " " + $0
    (str1: String, str2: String) -> String in return str2 + " " + str1
})

//7.巢狀函數
func say2(_ name: String, _ greet: String ) -> () -> String {
    func connect() -> String {
        return greet + " " + name + "(with nested func)"
    }
    return connect
}

let result = say2("Mac","Hello")
print(result())


