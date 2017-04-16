//: Playground - noun: a place where people can play

import UIKit

/*******************1.数组********************/
var intArr = [Int]()
print("intArr is of type [Int] with \(intArr.count) items.")
//打印结果：intArr is of type [Int] with 0 items.
intArr.append(1)
//现在intArr里面有1个值了
intArr = []
//intArr 又是一个空数组了，不过它的类型还是[int]

var doubleArr = Array(repeating:0.0, count:5)
// doubleArr是个Double类型的数组，默认值是[0.0,0.0,0.0,0.0,0.0]

var strArr = ["Apple","Orange"]
// strArr是个String类型的数组

print(strArr[0]) //打印：Apple
strArr[0..<2] = ["Bananas","Juice"]
//现在strArr是["Bananas","Juice"]了

strArr.insert("Apple",at:0)
//strArr的值现在是["Apple","Bananas","Juice"]

let apple = strArr.remove(at:0)
//apple是"Apple"，strArr里面还剩下两个值了

print(strArr[0])
//打印结果：Bananas

let juice = strArr.removeLast()
//juice的值是"Juice"，strArr还剩下一个值


for item in strArr{
    print(item)
}

//循环输出下标和值
for (index,item) in strArr.enumerated(){
    print("Item \(index + 1): \(item)")
}


/*******************2.集合********************/
var fullSet : Set<String> = ["HTML5","App","XWx"]
//也可以简写成如下：
var shortSet : Set = ["HTML5","App","XWx"]

shortSet.insert("Vovo")

//删除一个元素，元素可能为nil
if let removed = shortSet.remove("HTML5"){
    print("\(removed)? 被删掉了")
}else{
    print("不存在这个元素")
}

//查找某个元素
if shortSet.contains("Woo"){
    print("找到了")
}else{
    print("没找到")
}

//遍历集合
for item in shortSet {
    print("\(item)")
}
//按照首字母进行默认排序后的序列
for item in shortSet.sorted(){
    print("\(item)")
}

let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]
//获取并集，并且进行排序
oddDigits.union(evenDigits).sorted()
// 获取交集
oddDigits.intersection(evenDigits).sorted()
// 获取差集，在oaddDigits并且不在singleDigitPrimeNumbers中
oddDigits.subtracting(singleDigitPrimeNumbers).sorted()
// 获取oddDigits和singleDigitPrimeNumbers的补集，也就是并集-交集
oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted()

let houseAnimals: Set = ["🐶", "🐱"]
let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
let cityAnimals: Set = ["🐦", "🐭"]
//子集判断
houseAnimals.isSubset(of: farmAnimals)
// 父集判断
farmAnimals.isSuperset(of: houseAnimals)
// 是否没有交集
farmAnimals.isDisjoint(with: cityAnimals)

/*******************3.字典********************/
//初始化
var intStringDic = [Int:String]()
intStringDic = [:]
var fruits = ["Apple":"苹果","Juice":"橘子","Bananas":"香蕉"]

//插入和删除
intStringDic[10] = "Ten"
fruits["Orange"] = "橙色的"
fruits["Orange"] = "橙子"
fruits["Orange"] = nil

//使用函数进行更新和删除
if let oldValue = fruits.updateValue("APP", forKey: "Apple") {
    print("更新前的值是： \(oldValue).")
}
if let removedValue = fruits.removeValue(forKey: "Orange") {
    print("删除前的值是： \(removedValue).")
} else {
    print("fruits字典里面没有Orange这个键值")
}

//循环遍历
for (itemKey, itemValue) in fruits {
    print("\(itemKey): \(itemValue)")
}

//字典类型的keys和values属性返回字典的键值的无序集合，可以转为数组
let keys = [String](fruits.keys)
let values = [String](fruits.values)


