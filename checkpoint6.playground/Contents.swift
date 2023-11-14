import UIKit

struct Car {
    let model: String
    let numOfSeats: Int
    private(set) var currentGear: Int = 1 {
        didSet {
            if oldValue < currentGear {
                print("Car has higher gear")
            } else {
                print("Car has lower gear")
            }
        }
    }
    
    mutating func shiftGear(up: Bool = true) {
        if up && currentGear < 10 {
            currentGear += 1
        } else if currentGear > 1 {
            currentGear -= 1
        } else {
            print("Already at maximum or minimum gear")
        }
    }
}

var chevy = Car(model: "Chevy Tahoe", numOfSeats: 7, currentGear: 3)
chevy.shiftGear()
