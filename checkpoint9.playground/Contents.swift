import UIKit

func randomIntFromArray(_ intArray: [Int]?) -> Int {
    return intArray?.randomElement() ?? Int.random(in: 1...100)
}
let arr: [Int] = [1, 2, 5, 8]
print(randomIntFromArray(arr))
