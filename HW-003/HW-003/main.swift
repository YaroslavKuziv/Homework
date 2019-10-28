//
//  main.swift
//  HW-003
//
//  Created by Ishimura on 24/10/2019.
//  Copyright © 2019 Ishimura. All rights reserved.
//

import Foundation

//1_3
print("#1 Task3")
print("Please, enter a word: ")
let userInput = readLine()
print("Where would you like to position:\n1. At the beginnig of a line? \n2. At the end of a line?")
print("Hello, World! \(userInput!) \n")

//1_4
print("#1 Task4")

print("Please, enter a word: ")

let userWordInput = readLine()

print("Where would you like to position:\n1. At the beginnig of a line? \n2. At the end of a line?")

let userLinePositionChoice = readLine()

switch Int(userLinePositionChoice!) {
case 1:
    print("\(userWordInput!) Hello, World! ")
case 2:
    print(" Hello, World! \(userWordInput!) ")
default:
    print("Please, make a valid input!")
}


////2_1

var taskThreeString = "Hello World. This is Swift programming language"

let lengthOfString = taskThreeString.count
print("Length of string is \(lengthOfString) symbols")

let stringWithReplacedSymbols = taskThreeString.replacingOccurrences(of: "i", with: "u")
print(stringWithReplacedSymbols)


taskThreeString.remove(at: taskThreeString.index(taskThreeString.startIndex, offsetBy: 3))
taskThreeString.remove(at: taskThreeString.index(taskThreeString.startIndex, offsetBy: 6))
taskThreeString.remove(at: taskThreeString.index(taskThreeString.startIndex, offsetBy: 9))


taskThreeString += " modified"

print(taskThreeString)


print(taskThreeString.isEmpty)


taskThreeString.insert(".", at:taskThreeString.endIndex)
print(taskThreeString)

if taskThreeString.contains("Hello"){
    print("ture")
}else{
    print("false")
}

if taskThreeString.contains("World"){
    print("ture")
}else{
    print("false")
}

taskThreeString.insert("-", at:  taskThreeString.index(taskThreeString.startIndex, offsetBy: 9))
print(taskThreeString)

 let newStr = stringWithReplacedSymbols.replacingOccurrences(of: "Thus us", with: "It is")
print(newStr)

let indexOfTen = taskThreeString.index(taskThreeString.startIndex, offsetBy: 9)
let indexOfFifthtenn = taskThreeString.index(taskThreeString.startIndex, offsetBy: 14)

print(taskThreeString[indexOfTen])
print(taskThreeString[indexOfFifthtenn])

let startIndex = taskThreeString.index(taskThreeString.startIndex, offsetBy: 9)
let endIndex = taskThreeString.index(taskThreeString.startIndex, offsetBy: 13)

print(taskThreeString[startIndex..<endIndex])

let myName  = "Yaroslav"

let yaroslavsName = myName


