//
//  OpenClosePrinciple.swift
//  Solid Code
//
//  Created by Daniel Prastiwa on 07/08/20.
//  Copyright © 2020 Danielprast. All rights reserved.
//

import Foundation

class Product {
    /** Products entities */
}

// MARK: - Bad Code
/*
class ShippingOrderService {
    func checkout(product: Product, type: ShippingType) {
        switch type {
        case ShippingType.JNE:
            /** do checkout product with this shipping type */
            break
        case ShippingType.TIKI:
            /** do checkout product with this shipping type */
            break
        default:
            print("Unsupported shipping type")
        }
    }
}

enum ShippingType {
    case JNE, TIKI
}
*/

// MARK: - Correct O/C Principle

protocol Shipping {
    func calculate(product: Product) -> Int
}

class JNEShipping: Shipping {
    func calculate(product: Product) -> Int {
        return 1000 /** calculate amount of this type with product*/
    }
}

class TIKIShipping: Shipping {
    func calculate(product: Product) -> Int {
        /** calculate amount of this type with product*/
        return 2000
    }
}

class ShippingOrderService {
    func checkout(product: Product, shipping: Shipping) {
        let costShipping = shipping.calculate(product: product)
        /** Code to do check */
        print(costShipping)
    }
}

// MARK: - Implementation

class OpenClosePrinciple {
    func run() {
        let product = Product()
        let jneShipping = JNEShipping()
        let shippingService = ShippingOrderService()
        shippingService.checkout(product: product, shipping: jneShipping)
    }
}
