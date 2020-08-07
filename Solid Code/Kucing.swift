//
//  Kucing.swift
//  Solid Code
//
//  Created by Daniel Prastiwa on 07/08/20.
//  Copyright © 2020 Danielprast. All rights reserved.
//

import Foundation

class Kucing {
    private var _color: String
    private var _height: Double
    private var _length: Double
    private var _weight: Double
    
    init(
        color: String,
        height: Double,
        length: Double,
        weight: Double
    ) {
        _color = color
        _height = height
        _length = length
        _weight = weight
    }
    
    init() {
        _color = ""
        _height = 0.0
        _length = 0.0
        _weight = 0.0
    }
    
    var color: String {
        set (value) { _color = value }
        get { return _color }
    }
    
    var height: Double {
        set (value) { _height = value }
        get { return _height }
    }
    
    var length: Double {
        set (value) { _length = value }
        get { return _length }
    }
    
    var weight: Double {
        set (value) { _weight = value }
        get { return _weight }
    }
    
    func purring() {
        print("Meauw")
    }
    
    func eat() {
        _weight += 1
    }
    
    func inspect() {
        print("Objek Kucing, dengan karakteristik:\nWarna: \(_color)")
        print("Tinggi: \(_height)")
        print("Panjang: \(_length)")
        print("Berat: \(_weight)")
    }
}
