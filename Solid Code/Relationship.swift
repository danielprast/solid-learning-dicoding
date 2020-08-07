//
//  Asociation.swift
//  Solid Code
//
//  Created by Daniel Prastiwa on 07/08/20.
//  Copyright © 2020 Danielprast. All rights reserved.
//

import Foundation

// MARK: - Association

// Usecase:
// Seorang pengguna memiliki hubungan one-to-many terhadap penjual.
// Pada contoh di bawah sebuah pengguna dapat membeli barang dari satu atau beberapa penjual.
// Oleh karena itu, pada class pengguna kita dapat menambahkan variabel daftar penjual
// sebagai tanda bahwa kedua kelas ini memiliki hubungan one-to-many.
//

class Seller {
    private let _id: String
    private let _name: String
    
    init(id: String, name: String) {
        _id = id
        _name = name
    }
}

class User {
    private let _id: String
    private let _name: String
    private let _sellers: [Seller]
    
    init(id: String, name: String, sellers: [Seller]) {
        _id = id
        _name = name
        _sellers = sellers
    }
}

// MARK: - Aggregation

class Shop {
    private let _id: String
    private let _name: String
    private var _seller: Seller?
    
    init(id: String, name: String) {
        _id = id
        _name = name
    }
    
    var seller: Seller {
        set(value) { _seller = value }
        get { return _seller! }
    }
}

// MARK: - Composition

class People {
    private let _id: String
    private let _name: String
    private let _address: Address
    
    init(id: String, name: String, address: Address) {
        _id = id
        _name = name
        _address = address
    }
}

class Address {
    private let _id: String
    private let _location: String
    
    init(id: String, location: String) {
        _id = id
        _location = location
    }
}

class CompositionImplementation {
    func run() {
        let people = People(id: "1234", name: "Khrisna", address: Address(id: "123", location: "Bandung"))
    }
}
