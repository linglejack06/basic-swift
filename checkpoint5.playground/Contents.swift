import UIKit

let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]
func returnLuckyNumbers(luckyNums: [Int]) -> [String] {
    var filteredArr = luckyNums.filter { num in
        !num.isMultiple(of: 2)
    }
    filteredArr = filteredArr.sorted()
    let stringArr = filteredArr.map { num in
        "\(num) is a lucky number"
    }
    return stringArr
}
let luckyExpressions = returnLuckyNumbers(luckyNums: luckyNumbers)
for exp in luckyExpressions {
    print(exp)
}
