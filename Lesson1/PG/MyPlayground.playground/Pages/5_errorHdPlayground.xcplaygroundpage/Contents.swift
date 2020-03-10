// MARK: - 錯誤處理
enum CustomizeError:Error {
    case tooYoungProblem
    case unGraduatedProblem
    case noReasonProblem
}

class Person {
    func goForPSMC(age:Int, learningStatus: Bool) throws {

        guard learningStatus else {
            throw CustomizeError.unGraduatedProblem
        }

        guard age > 18 else {
            throw CustomizeError.tooYoungProblem
        }

        guard age < 100 else {
            throw CustomizeError.noReasonProblem
        }
        
        print("這人有機會!")
    }
}


var person : Person = Person()
defer {
    print("不管有無機會都要通知他")
}
do {
    try person.goForPSMC(age: 120, learningStatus: true)
}
catch  CustomizeError.tooYoungProblem {
    print("等他慢慢長大")
}
catch  {
    print(error)
}

