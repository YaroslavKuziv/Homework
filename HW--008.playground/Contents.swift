import Foundation
//1. Створити структуру, що описує точку у декартовій (x; y) та полярній (radius; angle) системі координат за допомогою властивостей, які недоступні для зміни поза межами структури та надати їм значення за замовчуванням. Результат - 3(?) структури: Point, CartesianPoint, PolarPoint
//2. Описати ініціалізатори створення точки за допомогою декартових (x; y) та полярних координат (radius; angle). Створення точки за допомогою декартових координат автоматично визначає полярні координати і навпаки.
//3. Описати функції, що дозволяють змістити точку у нову позицію за координатами у декартовій (x; y) та полярній (radius; angle) системах.
//4. Описати функцію приведення точки до рядкового представлення з параметром, який вказує систему координат, у якій повинна бути
//5. Описати розширення (в іншому файлі), де визначити функцію типу, яка повертає відстань між двома точками.
//6. Описати розширення (в іншому файлі), де визначити два додаткові ініціалізатори створення точки на основі користувацьких типів CartesianCoordinates та PolarCoordinates, які мають бути описані у даному файлі (використати методи для ініціалізації обєктів).

struct Point{}

struct CartesianPoint{
    
   private var x: Float = 0.0
       
   private var y: Float = 0.0
    
    
    //??????
    private var radius: Float = 0.0
    
    private var angle: Float = 0.0
    
    enum CoordinteSystem {
          
          case Cartesian
          
          case Polar
      }
    
    init(x: Float, y: Float) {
        
        self.x = x
        
        self.y = y
        
        self.radius = ((x * x) + (y * y)).squareRoot()
        
        self.angle = atan(y/x)
    }
    
    mutating func movePoint(x: Float, y: Float) {
        
        self.x += x
        
        self.y += y
        
    }
    
    func pointToString(coordinateSystem: CoordinteSystem) -> String{
        
        
        switch coordinateSystem {
        case .Cartesian:
            
            return "Cartesian - x: \(x), y: \(y)"
            
        case .Polar:
            
            return "Polar - radius: \(radius), angle:\(angle)"
            
        default:
            print("default")
        }
        
    }
 
}

struct PolarPoint{
    
   private var radius: Float = 0.0
    
   private var angle: Float = 0.0
    
    init (radius: Float, angle: Float){
        
        self.radius = radius
        
        self.angle = angle
        
        var x = radius * cos(angle)
    
        var y = radius * sin(angle)
        
    }
    
    mutating func changeParameters(radius: Float, angle: Float){
        
        self.angle += angle
        self.radius += radius
    }
    
}

var  a = CartesianPoint(x: 10, y: 10)

a.pointToString(coordinateSystem: .Polar)


extension CartesianPoint{
    
   static func distanceBetweenTwoPoints(aX: Float, aY: Float, bX: Float, bY: Float) -> Float{
        
        return ((powf((bX - aX), 2)) + powf((bY - aY),2)).squareRoot()
        
    }
    
    init(cartesianCoordinates: CartesianPoint){
        
        self.x = cartesianCoordinates.x
        self.y = cartesianCoordinates.y
        
    }
    
}

extension PolarPoint{
    
    init(polarObj: PolarPoint) {
        
        self.radius = polarObj.radius
        self.angle = polarObj.angle
        
    }
    
}
var c = CartesianPoint(cartesianCoordinates: a)


//Завдання 2
// 1. Створити структуру, що описує фігуру на основі точок (структура ізз авдання No1). Доступ до списку точок є закритим на зміну з-поза меж структури.
// 2. Описати перерахування, яке визначає тип фігури (невідомо, точка, лінія, трикутник, чотирикутних та багатокутник). Описати властивість фігури, що представляє її тип.
// 3. Описати ініціалізатори для створення фігури з допомогою масив точок, або ряду точок. Тип фігури визначається у момент її створення.

enum TypeOfFigure{
    case Unknown
    case Dot
    case Line
    case Triangle
    case Square
    case Polygon
}
struct Figure{
    
    private var points:[CartesianPoint] = []
    
    var type: TypeOfFigure = .Unknown
    
    init(inputArray: [CartesianPoint], type: TypeOfFigure){
        
        self.points = inputArray
        self.type = type
        
    }
    
    subscript(index: Int) -> CartesianPoint  {
        
         return points[index]
        
    }
}

extension Figure{
    
    
//    func areaOfFigure(typeOfFigure: TypeOfFigure, inputArray: [CartesianPoint] ){
//
//        switch typeOfFigure {
//        case .Unknown:
//            print("unknown type")
//
//        case .Triangle:
//
//            var result = (1 / 4) * (3  * 
//            print("Area of triangle is: ")
//
//
//        default:
//            print("default")
//        }
//
//
//    }
//
    
    
    
}

