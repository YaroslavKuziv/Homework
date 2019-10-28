import UIKit
import Foundation




//2

//1. Ціле десяткове число 12 з мінімально необхідною розрядною сіткою.
let firstNumbber  : UInt8 = 12
//2. Ціле десяткове число -100 з мінімально необхідною розрядною сіткою.
let secondNumer : Int8 = -100
//3. Ціле шістнадцяткове число, що рівне цілому десятковому числу 128.
let toHex = 128
let h1 = String(toHex, radix: 16)
print(h1)
//7. Символ “а”.
let char = "a"
//8. Рядок “Hello World”.
let stirng = "Hello world"
//9. Істина.
var truth = true
//10.Число 12 та його рядкове представлення “twelve”.
let myVar : Int = 12
let myStr : String = "twelve"

//3
//1. Визначити та вивести на екран довжину рядка.
var taskThreeString = "Hello World. This is Swift programming language"
let lengthOfString = taskThreeString.count
print("Length of string is \(lengthOfString) symbols")
//2. Замінити кожне входження символа “i” на символ “u”.
let stringWithReplacedSymbols = taskThreeString.replacingOccurrences(of: "i", with: "u")
print(stringWithReplacedSymbols)
//3. Видалити 4-й, 7-й та 10-й символи.
taskThreeString.remove(at: taskThreeString.index(taskThreeString.startIndex, offsetBy: 3))
taskThreeString.remove(at: taskThreeString.index(taskThreeString.startIndex, offsetBy: 6))
taskThreeString.remove(at: taskThreeString.index(taskThreeString.startIndex, offsetBy: 9))
//4. Додати рядок “ (modified)” до існуючого рядка.
taskThreeString += " modified"
print(taskThreeString)
//5. Вивести значення, що визначає чи існуючий рядок є пустим.
print(taskThreeString.isEmpty)
//6. Додати символ “.” до кінця існуючого рядка.
taskThreeString.insert(".", at:taskThreeString.endIndex)
print(taskThreeString)
//7. Вивести значення, що визначає чи рядок починається з підрядка “Hello”.
if taskThreeString.contains("Hello"){
    print("ture")
}else{
    print("false")
}
//8. Вивести значення, що визначає чи рядок закінчується підрядком “world.”
if taskThreeString.contains("World"){
    print("ture")
}else{
    print("false")
}
//9. Вставити символ “-“ після 10-го символа.
taskThreeString.insert("-", at:  taskThreeString.index(taskThreeString.startIndex, offsetBy: 9))
print(taskThreeString)
//10.Замінити послідовність “Thus us” послідовністю “It is”
 let newStr = stringWithReplacedSymbols.replacingOccurrences(of: "Thus us", with: "It is")
print(newStr)
//11.Вивести 10-й та 15-й симоли існуючого рядка.
let indexOfTen = taskThreeString.index(taskThreeString.startIndex, offsetBy: 9)
let indexOfFifthtenn = taskThreeString.index(taskThreeString.startIndex, offsetBy: 14)

print(taskThreeString[indexOfTen])
print(taskThreeString[indexOfFifthtenn])
//12.Вивести підрядок, що знаходиться у межах 10-го (включно) та 15-го (невключно) символів.
let startIndex = taskThreeString.index(taskThreeString.startIndex, offsetBy: 9)
let endIndex = taskThreeString.index(taskThreeString.startIndex, offsetBy: 13)
print(taskThreeString[startIndex..<endIndex])


//13.Створіть рядок і змінну яка посилається на рядок, виведітьадреси обох змінних
//14.Повторіть операцію 13 але створивши substring рядка як 2-гу змінну.
let myName  = "Yaroslav"
let yaroslavsName = myName


//3

//1. Опишіть сутність (змінну), що містить або не містить ціле десяткове число integerNumber, але не задає значення за замовчування.
var inteGerNumber: Int?
//2. Опишіть сутність (змінну), що містить або не містить число з плавачою крапкою decimalNumber, але не задає значення за замовчування.
var decimalNumber : Decimal?
//3. Присвойте значення числу integerNumber.
inteGerNumber = 12
//4. Додайте до числа integerNumber те ж значення, використовуючи increment та (або) decrement оператор.
inteGerNumber! -= 12
//5. Змініть знак числа на протилежний, використовуючи unary minus або plus оператор.
let minusIntegerNumber = -inteGerNumber!
//6. Присвойте значення числу decimalNumber значенням числа integerNumber
decimalNumber = Decimal(inteGerNumber!)
//7. Опишіть сутність pairOfValues, що містить або не міститьзначення integerNumber та decimalNumber.
var pairOfValues: (Int?, Decimal?) = (10, 12.1231231)
//8. Перевірте, чи містить сутність pairOfValues цілочислове значення та виведіть його, якщо таке значення існує.
if pairOfValues.0 != nil{
 print("It exists")
}else{print("it doesn't exist")}
//9. Перевірте, чи містить сутність pairOfValues значення, що представлене число з плавачою крапкою, та виведіть його, якщо таке значення існує.
if pairOfValues.1 != nil{
 print("It exists")
}else{print("it doesn't exist")}
//10. Виведіть значення числа decimalNumber використовуючи optinional binding.
if let decimalValue = pairOfValues.1{
    print("Decimal valie is: \(decimalValue)")
}else{
    print("sad")
}


//5
//1. Створіть змінну яка містить Int16.max
var myInt = Int16.max
//2. Додайте до цієї змінної 1
//3. Модифікуйте код так, щоб позбутися помилки використовуючи лише 1 оператор (overflowOperator)
myInt = myInt &+ 1
print(myInt)

//5. Створіть змінну UInt8 яка б мала 3 біт рівний одиниці використовуючи 0b анотацію
let initialBits: UInt8 = 0b00000100

print(initialBits)

//6. Виконайте bit-shifting направо на 4. Перевірте число в 10-й системі. Чому так сталося?
var  newVar = initialBits >> 4

print(newVar)

//7. Створіть вираз тиру 2 + 4 * 4 % 5 / 3 - 1 % 4
let newExpression =  2 + 4 * 4 % 5 / 3 - 1 % 4

