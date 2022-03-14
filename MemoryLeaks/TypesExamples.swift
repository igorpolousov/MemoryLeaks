//
//  TypesExamples.swift
//  MemoryLeaks
//
//  Created by Igor Polousov on 14.03.2022.
//

import Foundation
// MARK: Value types

// Если создать объект такого типа, в памяти появится запись first = 8, например
var first: Int = 8
// И затем создать второй объект
var second: Int = first
// То в памяти появится еще одна запись second = 8. И если далее присвоить другое значение second, то в памяти появится second = 5
//second = 5
// И так каждый раз в памяти будет создаваться новый объект

// MARK: Reference type

class MyClass {
    var myInt = 8
}
// Если создать переменную этого класса, то в памяти появится запись класса, а переменная будет иметь ссылку на него
// Адрес в памяти будет выглядеть как 0x0...
let firstClass = MyClass()

// Если создать другую переменную
let secondClass = firstClass
// То второго экземпляра класса создаваться не будет, а secondClass будет так же иметь ссылку на уже созданный класс
// Если поменять значение для secondClass myInt, то значение поменяется для обоих firstClass и secondClass
//secondClass.myInt = 5
//print(firstClass.myInt)
