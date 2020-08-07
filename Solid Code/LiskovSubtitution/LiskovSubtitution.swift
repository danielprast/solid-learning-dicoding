//
//  LiskovSubtitution.swift
//  Solid Code
//
//  Created by Daniel Prastiwa on 07/08/20.
//  Copyright © 2020 Danielprast. All rights reserved.
//

import Foundation

// MARK: - Bad Code

/*
protocol ProductObject {
    var name: String { get }
    var expiredDate: Date { get }
    
    /**
     * Function to get all of information about product
     */
    func getProductInfo()
}

class Vegetable: ProductObject {
    var name: String {
        return "Brocoli"
    }
    
    var expiredDate: Date {
        return Date()
    }
    
    func getProductInfo() {
        // some magic code
    }
}

class Smartphone: ProductObject {
    var name: String {
        return "Samsung Note 9"
    }
    
    var expiredDate: Date {
        return Date() // ?????
    }
    
    func getProductInfo() {
        // some magic code
    }
}
*/

// MARK: - Correct Code

protocol ProductObject {
    var name: String { get }
    
    /**
     * Function to get all of information about product
     */
    func getProductInfo()
}

protocol FoodProduct: ProductObject {
    var expiredDate: Date { get }
}

class Vegetable: FoodProduct {
    var name: String {
        return "Brocoli"
    }
    
    var expiredDate: Date {
        return Date()
    }
    
    func getProductInfo() {
        // some magic code
    }
}

class Smartphone: ProductObject {
    var name: String {
        return "Samsung Note 9"
    }
    
    func getProductInfo() {
        // some magic code
    }
}

// MARK: - Liskov Subtitution Implementation

class LiskovSubtitution {
    func run() {
        
    }
}
