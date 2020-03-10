class myClass{
    var int1 : Int = 0
    var int2 : Int = 1
}

struct myStruct{
    var int1 : Int
    var int2 : Int
}

//1. class : call by reference
var objA = myClass()
objA.int1 = 100
objA.int2 = 200

var objB = objA
print("objA (int1, int2) \(objA.int1) , \(objA.int2) ")
