import UIKit
import Foundation

//1. Опишіть тип який може зберігати інформацію про стан дверей (нова чи ні, колір, тип покриття і тп)

struct Door {
    
    var color: String
    var state: String
    
}

//2. Уявіть що пройшов певний час і вам на основі попереднього стану треба отримати поточний стан дверей, опишіть цей стан
var door = Door(color: "black", state: "old")

var newDoor = door
newDoor.state = "new"

//3. 2 стани мають існувати одночасно

door.state
newDoor.state

//5. Створити сутність Person і описати в ньому властивість name.

class Person0{

    var name0: String
    
    init(name0: String){
        self.name0 = name0
    }

}

class Person1{

    var name1: String
    
    init(name1: String) {
        self.name1 = name1
    }

}



var first = Person0(name0: "Vasya")
var second = Person1(name1:"Petya")
//8. Модифікувати ім’я змінних

first.name0 = "asldklasd"

second.name1 = "asl;dk;kads"

var additionalVar = first

additionalVar.name0 = "asdasdsa"
//9. Порівняти ім’я першої сутності з іменем другої
//first.name == second.name



//Створити клас Person і описати в ньому властивість name. В ініціалізаторі присвоїти імя і вивести в лог
class Person{
    var name: String
    var  child: Son?
    
 
    init(name: String) {
         
            self.name = name
             print("init: \(name)")
    }
    //Описати deinit і вивести в лог інформацію
    deinit {
        print("deinit: \(name)")
    }
}
//Створити об’єкт типу Son
class Son{
    var name: String
    weak var parent: Person?
    
    init(name: String) {
            
            self.name = name
            print("init: \(name)")
    }

    deinit {
        print("deinit:\(name)")
    }
}

//Створити skope (наприклад do {} ) для створеного обєкту і перезапустити playground. Звернути увагу на логи
do{
    var person = Person(name: "Vasya")
}

//Зберегти посилання Person в Son, Son в Person

//var firstPerson: Person
//var secondPerson: Son
//
//firstPerson.name = "Katya"
//secondPerson.name = "Liza"
//
//firstPerson.child = second
//secondPerson.parent = first
//Запустити код - звурнути увагу на логи (deinit не викликається)
//Модифікувати код так, щоб deinit з кожного об’єкту викликався
//first = nil
//second = nil


//Частина 1
//Створити обєкт Operand з властивістю number
//
//class Operand{
//    var number: Float
//
//    weak var Operand: Operand? = nil
//
//
//
//    init(number: Float) {
//        self.number = number
//        print("init")
//    }
//    deinit {
//        print("deinit")
//    }
//}
//let closure:((Operand, Operand) -> Operand) = { (num1, num2) in
//    return Operand(number:(num1.number + num2.number))
//}
//Додати в обєкт властивість типу operand: Operand?
//Створити closure для обчислення суми 2-х чисел з кількох Operand обєктів
//Написати код який створить retainCycle
//Написати код який вирішує проблему з попереднього пункту
//Частина 2
//1. Додати в клас Operand closure як властивість, яка робить якусь операцію (без параметрів). Виконати цей блок і init.
//2. Створити об`єкт типу Operand і відразу занілити його
//3. Перевірити логи (deinit не викликається)
//4. Модифікувати код з використанням weak / unowned в capture list для вирішення даної проблеми
//
//class Operand{
//    var number: Float
//
//    weak var Operand: Operand? = nil
//
//    let closure: (() ->())?
//
//    init(number: Float) {
//        self.number = number
//        print("init")
//        closure = { [weak self] in
//        
//        }
//    }
//    deinit {
//        print("deinit")
//    }
//}
//
//do{
//   
//
//}
