import UIKit


func fibonacci(numSteps: Int) -> [Int]{
    var sequence = [0 , 1]
    
    for _ in 0...numSteps - 2 {
        let first = sequence[sequence.count - 2]
        let second = sequence.last!
        sequence.append(first + second)
        
    }
    return sequence
}
//1. Опишіть масив fibArray з десяти перших чисел Фібонначі (можна згенерувати або ж використати hardcode).
var fibArray = fibonacci(numSteps: 10)
//2. Створіть масив revArray, елементи якого знаходяться в оберненому порядку відносно масиву fibArray. Зробіть реверсію масива кількома способами
var revArray = [Int]()
var totalIndexes = fibArray.count - 1

//2.1
for index in 0...totalIndexes{
    revArray.append(fibArray[totalIndexes - index])
    print(revArray)
}
//2.2
for item in fibArray.reversed(){
    print("\(item)")
}
//3 Створвіть масив shuffledArray, елементи якого перемішані відностно масиву fibArray. Використайте мінімально можливу операцію для виконання цього пункту. (завдання на логіку)

var shuffledArray = fibArray.shuffled()

//4. Опишіть масив простих чисел snglArray, які не перевищують число 100.

var snglArray = [Int]()
func isPrime(_ number: Int) -> Bool {
    return number > 1 && !(2..<number).contains { number % $0 == 0 }
}
for number in 2...100 {
    if isPrime(number) {
        snglArray.append(number)
    }
}


//5. Виведіть на екран кількість елементів масиву snglArray.
print(snglArray.count)
//6. Виведіть на екран 10-й елемент масив snglArray.
print(snglArray[10])
//7. Виведіть на екран підмасив елементів масиву snglArray,починаючи з 15-го та закінчуючи 20-м елементами.
var subArray = snglArray[15...20]
//8. Створіть масив rptArray з 10 елементів, що рівні 10-му елементумасиву snglArray.
var rptArray = Array(repeating: snglArray[10], count: 10)
//9. Опишіть масив непарних чисел oddArray (не менших за число 0, та не більших за число 10), використовуючи init(arrayLiteral:).
var oddArray = [1, 3, 5, 7, 9]
//10. Додайте до масиву oddArray число 11.
oddArray.append(11)
//11. Додайте до масиву oddArray числа 15, 17, 19 у якості підмасиву.
let subOddArray = [15, 17, 19]
oddArray.append(contentsOf: subOddArray)
//12. Вставте у масив oddArray число 13 на позицію між числами 11 та 15.
oddArray.insert(13, at: 6)
//13.Видаліть елементи масиву oddArray, пичинаючи з 5-го та закінчуючи 8-им (невключно) елементами.

print(oddArray[5..<8])
//14. Видаліть останній елемент масиву oddArray та виведіть його на екран.
print(oddArray.removeLast())
//15.Замініть елементи масиву oddArray, починаючи з 2-го та закінчуючи останнім, на масив з числовими елементами 2, 3, 4.
var newArray = [2,3,4]

oddArray.replaceSubrange(1...8, with: newArray)
//16. Видаліть елемент масиву oddArray, який рівний числу 3.
for element in oddArray {
    if element == 3{
        print(element)
    }
}
//17. Виведіть значення, яке визначає, чи міститься число 3 у масиві oddArray.

//18. Виведіть на екран рядкове представлення масиву oddArray.
 let strArr = oddArray.map{String($0)}


//2
//1. Опишіть множину chSet із символів а, b, c та d.
let chSet: Set<Character>  = ["a", "b", "c", "d"]
//2. Створіть mutable множину mChSet на основі множити chSet
var mChSet: Set = chSet
//3. Виведіть на екран кількість елементів множини mChSet.
print(mChSet.count)
//4. Вставте символ е в множину mChSet.
mChSet.insert("e")
//5. Створіть множину srtChSet, яка є відсортованою версією множини mChSet.
var srtChSet = mChSet.sorted()
//6. Видаліть з множини mChSet символ f та виведіть видалений символ на екран.
mChSet.insert("f")
print(mChSet.remove("f")!)
//7. Видаліть символ d з множини mChSet за його індексом та виведіть рядкове представлення множини mChSet.
mChSet.remove(at: mChSet.firstIndex(of: "d")!)
var setToStr = mChSet.map { String($0)}
print(setToStr)
//8. Виведіть відстань у множині mChSet між першим елементом та символом а.
mChSet.distance(from: mChSet.startIndex, to: mChSet.firstIndex(of: "a")!)
//9. Вставте символ а в множину mChSet.
mChSet.insert("a")
//10. Опишіть множини aSet (зі значеннями One, Two, Three, 1, 2) та bSet (зі значеннями 1, 2, 3, One, Two).
var aSet: Set = ["One","Two","Three", "1", "2"]
var bSet: Set = ["1", "2", "3", "One", "Two"]
//11. Створіть множину, яка містить всі спільні елементи для множин aSet та bSet.
var cSet = aSet.intersection(bSet)
//12. Створіть множину, яка містить унікальні елементи у множині aSet по відношенню до множини bSet. Створіть множину, яка містить унікальні елементи у множині bSet по відношенню до множини aSet.
var dSet = aSet.subtracting(bSet)
var eSet = bSet.subtracting(aSet)
//13. Створіть множину, яка містить елементи, які не є спільними для множин aSet та bSet.
var fSet = aSet.symmetricDifference(bSet)
//14. Створіть множину, яка об'єднує усі елементи множин aSet та bSet.
var gSet = aSet.union(bSet)
//15. Опишіть множини xSet (зі значеннями 2...4), ySet (зі значеннями 1...6), zSet (зі значеннями 3, 4, 2) та x1Set (зі значеннями 5, 6, 7).
var xSet: Set = [2, 3, 4]
var ySet: Set = [1, 2, 3, 4, 5, 6]
var zSet: Set = [3, 4, 2]
var x1Set: Set = [5, 6, 7]
//16. Виведіть значення, які визначають чи множина xSet входить у множину ySet, а також чи множина ySet входить у множину xSet.6
ySet.isSubset(of: xSet)
xSet.isSubset(of: ySet)
//17.Виведіть значення, які визначають чи множина xSet містить множину ySet, а також чи множина ySet містить множину xSet.
xSet.isSuperset(of: ySet)
ySet.isSuperset(of: xSet)
//18.Виведіть значеня, яке визначає чи множини xSet та zSet є рівними.
xSet == zSet
//19.Виведіть значення, яке визначає чи множина xSet входить у множину zSet, але не є рівною множині zSet.
xSet.isStrictSubset(of: zSet)
//20.Виведіть значення, яке визначає чи множина xSet містить множину zSet, але не є рівною множині zSet.
xSet.isSuperset(of: zSet)

//3
//Опишіть словник nDict, ключами якого є числові рядкові предсталення чисел від 1 до 5, а відповідними значеннями є рядкові представлення чисел від 1 до 5 на англійській мові (наприклад, 1:One).
var nDict = ["1": "One", "2": "Two", "3": "Three", "4": "Four", "5": "Five"]
//2. Виведіть на екран значення масиву nDict за ключем 3.
print(nDict["3"])
//3. Виведіть на екран значення масиву nDict за індексом ключа 4.
//print(Array(nDict["4"])

//4. Створіть mutable словник mNDict на основі словника nDict.
var mNDict = nDict

//5. Додайте елементи 6:Seven та 7:Six до словника mNDict.
mNDict["6"] = "Seven"
mNDict["7"] = "Six"
//6. Оновіть значення елементів словника mNDict, не використовуючи subscript [], до наступних: 6:Six, 7:Seven, 8:Eight.
mNDict.updateValue("Six", forKey: "6")
mNDict.updateValue("Seven", forKey: "7")

//7. Видаліть елемент за ключем 5 зі словника mNDict.
mNDict.removeValue(forKey: "5")

//8. Видаліть елемент за індексом ключа 4 зі словника mNDict.
//let idx= mNDict.index(forkey:4)
//mNDict.remove(at:idx!)
//9. Визначіть та виведіть на екран відстань у словнику mNDict між парами значень 1:One та 7:Seven.
//mNDict.distance(from: "1",:"One", to: mNDict.firstIndex(where: "One": "Seven"))

//10.Створіть масив mNDictKeys, елементами якого є усі ключі словника mNDict.
var mnDictKeys = mNDict.keys
//11.Створіть масив mNDictKeys, елементами якого є усі значення словника mNDict.
var mnDictValues = mNDict.values
//12. Виведіть на екран кількість елементів словника mNDict, а також кількість його всіх ключів та його всіх значень.
print(mNDict.count)
//13. Виведіть на екран рядкове представлення словника mNDict.
 let strDict = mNDict.map{String($0)}
