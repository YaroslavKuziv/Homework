import UIKit
import NaturalLanguage

var str = "Hello, playground"
//Створити функцію, яка приймає число та повертає його факторіал. Реалізація функції не повинна викликати жодну вбудовану математичну функцію мови Swift (наприклад, factn).

func fibonacci(numSteps: Int) -> [Int]{
    var sequence = [0 , 1]
    
    for _ in 0...numSteps - 2 {
        let first = sequence[sequence.count - 2]
        let second = sequence.last!
        sequence.append(first + second)
        
    }
    return sequence
}

//Створити функцію сортування масиву, яка приймає масив чисел та сортує його. Алгоритм сортування визначається на етапі виклику функції. Сортування виконувати двома алгоритмами: бульбашкою та вибором. Сортування бульбашкою є алгоритмом за замовчуванням. Реалізація функції не повинна викликати жодну вбудовану функцію мови Swift (наприклад, типу sort, swap).

func iSort (unsortedArray: inout [Int], bubbleSortOn: Bool, selectionSortOn: Bool) -> [Int]{
    
    if bubbleSortOn == true{
        for i in 0..<unsortedArray.count {
          for j in 1..<unsortedArray.count - i {
            if unsortedArray[j] < unsortedArray[j-1] {
              let tmp = unsortedArray[j-1]
              unsortedArray[j-1] = unsortedArray[j]
              unsortedArray[j] = tmp
            }
          }
        }
        return unsortedArray
        
        
    }else if selectionSortOn == true  {
        guard unsortedArray.count > 1 else { return unsortedArray }  // 1

        var a = unsortedArray                    // 2

        for x in 0 ..< a.count - 1 {     // 3

          var lowest = x
          for y in x + 1 ..< a.count {   // 4
            if a[y] < a[lowest] {
              lowest = y
            }
          }

          if x != lowest {               // 5
            a.swapAt(x, lowest)
          }
        }
        return a
    }
    
    
    
    print("choose a algorythm")
    return[]
    
 
}
 
var a = [1, 6, 2, 10, 45, 2, 7, 1, 1, 32, 12, 21, 4, 5]

var sortedArray = iSort(unsortedArray: &a, bubbleSortOn: true, selectionSortOn: true)


//Створити функцію, яка аналізує вхідний символ на його належність до літер або цифр, належність до літер англійської чи української абеток, належність до літер великого або малого регістрів. Результатом виконання функції є результати аналізу. Функція повинна здійснювати зрозумілий користувачу вивід на екран результатів аналізу.

//func detectedLangauge(for string: String) -> String? {
//    let recognizer = NLLanguageRecognizer()
//    recognizer.processString(string)
//    guard let languageCode = recognizer.dominantLanguage?.rawValue else { return nil }
//    let detectedLangauge = Locale.current.localizedString(forIdentifier: languageCode)
//    return detectedLangauge
//}

func symbolChecker(symbol:  Character){
    
    
    
    if symbol.isNumber == true{
        
        print("it's a digit")
        
    }else if symbol.isLowercase {
        
        print("it's a lowercase letter")
        
    }else if symbol.isUppercase{
        
         print("it's a uppercase letter")
        
    }
        
       
       
   

    
    
}

symbolChecker(symbol: "і")

//Створити функцію, яка аналізує вхідний рядок на кількість входжень кожного символа. Результатом виконання функції є таблиця усіх символів рядка та кількостей їх входжень.


func checkStr(inputString: String) -> Dictionary<String, Int>{

    var result  = [String: Int]()

//    var amount = 0
//
//    var index = 0

    var characters = Array(inputString)
    
    // з інтернету %)
    for item in characters {
        result[String(item)] = (result[String(item)] ?? 0) + 1
    }

 
      
//    for item in characters{
//
//        if(item == characters[index]){
//
//            amount += 1
//
//            index += 1
//
//            result[String(item)] = amount
//
//        }else if item != characters[index] {
//
//            amount = 0
//
//
//            print("no match")
//        }
//
//
//    }


    print(characters)

    return result
}

checkStr(inputString: "aaasssddd")


//Створити функцію, яка приймає два числа-операнди та функцію- операцію і повертає результат її виконання над операндами. Реалізувати підтримку наступних дій над числами: додавання, віднімання, множення, операція остачі від ділення, піднесення до степеня (не використовуючи вбудовних математичних функцій Swift, наприклад power). Реалізувати меню вибору функції-операції, у якому звертання до основної функції-калькулятора є забороненим. Реалізація виконання математичних операцій не потребує користувацького вводу з клавіатури - все виконується послідовно. Від користувача очікується лише введення вхідних даних.


//let firstOperand = 5
//let secondOperand = 2
//var result : Double = 0
//var operationSign : String = ""
//
//func operation(_ : String) -> Double{
//    switch operationSign {
//        case "+":
//            result = Double(firstOperand + secondOperand)
//        case "-":
//            result = Double(firstOperand - secondOperand)
//        case "*":
//            result = Double(firstOperand * secondOperand)
//        case "/":
//            result = Double(firstOperand / secondOperand)
//        case "%":
//            result = Double(firstOperand % secondOperand)
//        case "ˆ":
//            result = Double(firstOperand * firstOperand)
//        default:
//            break
//    }
//    return result
//}
////operation("+")
//
//func calculator(_ firstOperand : Double, _ secondOperand : Double, _ operation: (String)) -> Double {
//
//    return result
//}
//calculator(5, 2, "+")
