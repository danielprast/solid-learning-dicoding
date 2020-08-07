//
//  Polymorphism.swift
//  Solid Code
//
//  Created by Daniel Prastiwa on 07/08/20.
//  Copyright © 2020 Danielprast. All rights reserved.
//

import Foundation

// MARK: - :: Compile time Polymorphism

class Arithmetic {
    func add(_ valueA: Int, _ valueB: Int) -> Int {
        return valueA + valueB
    }
    
    func add(_ valueA: UInt64, _ valueB: UInt64) -> UInt64 {
        return valueA + valueB
    }
    
    func add(_ valueA: Int, _ valueB: UInt64) -> UInt64 {
        return UInt64(valueA) + valueB
    }
    
    func add(_ valueA: UInt64, _ valueB: Int) -> UInt64 {
        return valueA + UInt64(valueB)
    }
}

class Add: Arithmetic {
    override func add(_ valueA: Int, _ valueB: Int) -> Int {
        print("Calculate!")
        return super.add(valueA, valueB)
    }
}

// MARK: - :: Runtime Polymorphism

class Phone {
    func openContact() {
        print("\(String(describing: type(of:self))) open contact from menu")
    }
}

class AndroidPhone: Phone {
    override func openContact() {
        print("\(String(describing: type(of:self))) open contact from home screen")
    }
}

class RuntimePolymorphismImplementation {
    func run() {
        let phone = AndroidPhone()
        phone.openContact()
    }
}
