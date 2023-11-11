import UIKit

class Animal {
    var legs: Int
    
    init(legs: Int) {
        self.legs = legs
    }
    func speak(word: String) {
        print(word)
    }
}

class Dog: Animal {
    var bark: String
    
    init(legs: Int, bark: String) {
        self.bark = bark
        super.init(legs: legs)
    }
    
    func speak() {
        super.speak(word: bark)
    }
}
class Cat: Animal {
    var meow: String
    var isTame: Bool
    
    init(legs: Int, meow: String, isTame: Bool) {
        self.meow = meow
        self.isTame = isTame
        super.init(legs: legs)
    }
    
    func speak() {
        super.speak(word: meow)
    }
}

let greg = Cat(legs: 4, meow: "meooowww", isTame: true)
greg.speak()
