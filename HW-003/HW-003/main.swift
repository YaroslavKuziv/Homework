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


