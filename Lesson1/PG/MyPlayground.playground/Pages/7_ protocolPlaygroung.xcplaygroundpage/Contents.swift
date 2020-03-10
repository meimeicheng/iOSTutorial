protocol Animal {
    func makeSound()
    func move()
}

struct Dog: Animal {
    func makeSound() {
        print("Woof.")
    }
    
    func move() {
        print("walk around like a dog")
    }
    
    func bite() {
        print("bite")
    }
}

//會被要求要實作所有animal的項目
//class Tiger: Animal {
//    func eat() {
//        print("meat")
//    }
//}

//let animal: Animal = Tiger()
//animal.makeSound()
//animal.move()

