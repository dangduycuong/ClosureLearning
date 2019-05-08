//import UIKit
//
//var str = "Hello, playground"
//
//var array = [1, 2, 5, 4]
//
//func checkEvenNumber(number: Int) -> Bool {
//    return number % 2 == 0
//}
//// gọi với chung là first class
//var checkEvenNumber2 : (Int) -> Bool = { number -> Bool in
//    return number % 2 == 0
//}
//
//checkEvenNumber(number: 10)
//
//checkEvenNumber2 = checkEvenNumber
//
//var x = 1
//var y = x
//
////tổng kết, func cũng là một object khởi tạo ra và gán được cho nhau.
//
//// closure cũng là một ob. Có thể truyền đi được.
////class MyClass {
////    func checkEvenNumber(number: Int) -> Bool {
////        return number % 2 == 0
////    }
////
////    var checkEvenNumber2 : (Int) -> Bool = { number -> Bool in
////        return number % 2 == 0
////    }
////
////    func doSomething () {
////        checkEvenNumber2 = checkEvenNumber
////    }
////}
////
////var myClass = MyClass()
//
////class Check {
////    func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
////        for item in list {
////            if condition(item) {
////                return true
////            }
////        }
////        return false
////    }
////    func lessThanTen(number: Int) -> Bool {
////        return number < 10
////    }
////}
////
////var numbers = [20, 19, 7, 12]
////
////var check = Check()
////check.hasAnyMatches(list: numbers, condition: )
////print(check)
//
//class MyClass {
//    var check: ((Int) -> Bool)?
//}
//
//var myClass = MyClass()
//func checkOddNumber(number: Int) -> Bool {
//    return number % 2 != 0
//}
//
//myClass.check = checkOddNumber
//myClass.check?(10)
//
//
//var arrayNumber = [1, 3, 4, 5, 6, 7]
//
////func LocPhanTuChan(array: [Int]) -> [Int] {
////    var result = [Int]()
////    return result
////}
//
//func LocPhanTuChan(array: [Int], condition: (Int) -> Bool) -> [Int] {
//    var result = [Int]()
//    for item in array {
//        if condition(item) {
//            result.append(item)
//        }
//    }
//    return result
//}
//
//func checkPrime(number: Int) -> Bool {
//    if number < 2 {
//        return false
//    } else {
//        for i in 2...number {
//            if number % i == 0 {
//                return false
//            }
//        }
//    }
//    return true
//}
//
//var arrayNumber2 = [Int](0...9)
//
//print(LocPhanTuChan(array: arrayNumber2, condition: checkPrime))
//
//var result = array.filter{ (number) -> Bool in
//    return number % 2 == 0
//}
//
//result
//
//// $0 là phần tử đầu tiên của cái đầu vào của closure.
//
//

import UIKit

func filterNumber(numbers: [Int], condition: (Int) -> Bool) -> [Int] {
    var primes = [Int]()
    
    for item in numbers {
        if condition(item) {
            primes.append(item)
        }
    }
    return primes
}

func checkPrime(number: Int) -> Bool {
    if number < 2 {
        return false
    }
    for i in 2..<number {
        if number % i == 0 {
            return false
        }
    }
    return true
}

var numbers = [Int](0...10)
var result = filterNumber(numbers: numbers, condition: checkPrime)

//numbers.removeAll(where: checkPrime)

numbers.removeAll{(number) -> Bool in
        return number % 2 == 0
}

filterNumber(numbers: [1, 2, 3, 4]) {
    $0 % 2 == 0
}


print(result)

print("New = \(numbers.sorted {$0 > $1})")


func selectSnort(numbers: [Int]) -> [Int] {
    var resultNumbers = numbers
    var min = resultNumbers[0]
    var temp = resultNumbers[0]
    for i in 0...resultNumbers.count - 2 {
        min = resultNumbers[i]
        for j in (i + 1)...resultNumbers.count - 1 {
            if resultNumbers[j] < min {
                min = resultNumbers[j]
                temp = resultNumbers[i]
                resultNumbers[i] = resultNumbers[j]
                resultNumbers[j] = temp

            }
        }
    }
    return resultNumbers
}

func sortCondition(number1: Int, number2: Int) -> Bool {
    return number1 > number2
}

numbers.sort(by: sortCondition)

numbers.sort { $0 > $1 }

