import UIKit
import Foundation

/*
 ЗАВДАННЯ No1 ОПИС:
 Створення «Hello, World!» програми.
 ДЕТАЛІ:
 Створити програму для виводу консольного повідомлення «Hello, World»
 ПУНКТИ ВИКОНАННЯ:
 1. Використати Objective-C/Swift мови програмування для проектів орієнтованих на CommandLine Tool.
 2. Створити 2 проекти і оглянути мінмальний набір компонентів в проекту.
 3. Модифікуйте програму так, щоб вона отримала введену інформацію від користувача і показала «Hello, World! + <введене слово>»
 4. Додайте вибір операцій в консолі після введення слова: 1- додати введене слово вкінці рядку або ж 2 - додати на початку рядку
 */

//3

let firstNumbber  : UInt8 = 12
let secondNumer : Int8 = -100


let toHex = 128
let h1 = String(toHex, radix: 16)
print(h1)

let char = "a"

let stirng = "Hello world"

var truth = false


let myVar : Int = 12
let myStr : String = "twelve"

var inteGerNumber: Int?
var decimalNumber : Decimal?

inteGerNumber = 12

inteGerNumber! -= 1
let minusIntegerNumber = -inteGerNumber!

var pairOfValues: (Int?, Decimal?) = (10, 12.1231231)
 
if pairOfValues.0 != nil{
 print("It exists")
}else{print("it doesn't exist")}


if pairOfValues.1 != nil{
 print("It exists")
}else{print("it doesn't exist")}



if let decimalValue = pairOfValues.1{
    print("Decimal valie is: \(decimalValue)")
}else{
    print("sad")
}

var myInt = Int16.max

myInt = myInt &+ 1
print(myInt)

let initialBits: UInt8 = 0b00000100

print(initialBits)

var  newVar = initialBits >> 4

print(newVar)


let newExpression =  2 + 4 * 4 % 5 / 3 - 1 % 4
let anotherExpression = 2 + 4 
