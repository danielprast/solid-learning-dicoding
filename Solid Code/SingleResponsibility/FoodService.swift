//
//  single.swift
//  Solid Code
//
//  Created by Daniel Prastiwa on 07/08/20.
//  Copyright © 2020 Danielprast. All rights reserved.
//

import Foundation

class FoodService{
    private var _id: Int
    private var _name: String
    private var _date: String
    
    init(id: Int, name: String, date: String) {
        _id = id
        _name = name
        _date = date
    }
    
    func addToStore() {
        if (!FoodExpiry.isExpired(date: _date)) {
            //Add to store
        }
    }
}
