//
//  Inheritance.swift
//  Solid Code
//
//  Created by Daniel Prastiwa on 07/08/20.
//  Copyright © 2020 Danielprast. All rights reserved.
//

import Foundation

// MARK: - :: Multilevel Inheritance
class Animal {
    func walk() {
        print("\(String(describing: type(of: self))) walk!")
    }
}

class Carnivore: Animal {
    func eat() {
        print("\(String(describing: type(of: self))) eat!");
    }
}

class Cat: Carnivore {}

// MARK: - :: Multiple Inheritance

//Multiple inheritance sendiri sangat jarang digunakan dalam pengembangan perangkat lunak karena sering menyebabkan permasalahan,
//terutama pada hirarki class yang berpotensi menyebabkan terjadinya kompleksitas tinggi.
//Worst case scenario-nya, permasalahan ini malah menghambat pengembangan.

protocol Ovipar {}
 
protocol Vivipar {}
 
protocol Ovovivipar : Ovipar, Vivipar {}
 
class Snake : Ovovivipar {}

// MARK: - :: Hierarchical

