import UIKit

//1. Створити клас Fraction який предствляє собою обєкт що описує дробове число
//2. Клас має мати lazy властивості які повертають
// подвоєне значення числа
// потроєне значення числа
// обернений дріб

class Fraction: NSObject, NSCopying{
    
    
    var numinator: Int
    var denuminator: Int
    
    
    lazy var doubled: Float = {
        return (Float(self.numinator) / Float(self.denuminator))  * 2
    }()
    
    lazy var trippled: Float = {
        return (Float(self.numinator) / Float(self.denuminator))  * 3
    }()

    lazy var reversed: String = {
        return  "Fraction: \(self.denuminator)/ \(self.numinator)"
    }()
    
      
    
    
    
    
    
    
    
    
    
    
    
        static func + (left: Fraction, right: Fraction) -> Fraction {
            return Fraction(numinator: left.numinator + right.numinator, denuminator: right.denuminator)
        }
    
       static func - (left: Fraction, right: Fraction) -> Fraction {
             return Fraction(numinator: left.numinator - right.numinator, denuminator: right.denuminator)
         }
    
        static func / (left: Fraction, right: Fraction) -> Fraction {
            return Fraction(numinator: left.numinator * right.denuminator, denuminator:left.denuminator * right.numinator)
         }
    
    

    var descript: String{
        
        return "Fraction: \(self.numinator)/ \(self.denuminator)"
    }
    
    var desyatkove: Float {
         return (Float(self.numinator) / Float(self.denuminator))
    }
    
    subscript(index: Int) -> Int {
        return numinator * index
    }
    
  
    
    
    init(numinator: Int, denuminator: Int) {
        
        self.numinator = numinator
        self.denuminator = denuminator
    }
    
    
    
    //Реалізувати копіювання об’єктів типу Fraction.
    func copy(with zone: NSZone? = nil) -> Any {
          let copy = Fraction(numinator: numinator, denuminator: denuminator)
          return copy
      }
}

//Реалізувати порівняння об’єктів типу Fraction.
extension Fraction {
    
//    static func + (left: Fraction, right: Fraction) -> Fraction {
//        return Fraction(numinator: left.numinator + right.numinator, denuminator: right.denuminator)
//    }
//
//    static func - (left: Fraction, right: Fraction) -> Fraction {
//         return Fraction(numinator: left.numinator - right.numinator, denuminator: right.denuminator)
//     }
//
//    static func / (left: Fraction, right: Fraction) -> Fraction {
//        return Fraction(numinator: left.numinator * right.denuminator, denuminator:left.denuminator * right.numinator)
//     }
//
    
    
    static func == (lhs: Fraction, rhs: Fraction) -> Bool {
        return
            lhs.numinator == rhs.numinator &&
            lhs.denuminator == rhs.denuminator
           
    }
}

