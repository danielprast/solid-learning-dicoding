//
//  DependencyInversion.swift
//  Solid Code
//
//  Created by Daniel Prastiwa on 07/08/20.
//  Copyright © 2020 Danielprast. All rights reserved.
//

import Foundation

// MARK: - Bad Code
/*
class PaymentService {
    
    private let database: MySQLDatabase = MySQLDatabase()
    
    func paymentIsValid() {
       // Implementation code
    }
    
    func openDatabase() {
       // Implementation code
    }
    
    func addNewPayment() {
       // Implementation code
    }
    
    func removePaymentByID() {
       // Implementation code
    }
    
    func updatePaymentByID() {
       // Implementation code
    }
}
 
class MySQLDatabase {
    
    func insert() {
        // Implementation code
    }
    
    func update() {
        // Implementation code
    }
    
    func delete() {
        // Implementation code
    }
}
*/

// MARK: - Good Code

class PaymentService {
    
    private let _database: Database
    
    init(database: Database) {
        _database = database
    }
    
    func paymentIsValid() {
       
    }
    
    func openDatabase() {
       
    }
    
    func addNewPayment() {
       
    }
    
    func removePaymentByID() {
       
    }
    
    func updatePaymentByID() {
       
    }
}

protocol Database {
    func insert()
    func update()
    func delete()
}

class MySQLDatabase: Database {
    func insert() {
        
    }
    
    func update() {
        
    }
    
    func delete() {
        
    }
    
    
}

class MongoDatabase: Database {
    func insert() {
        
    }
    
    func update() {
        
    }
    
    func delete() {
        
    }
}

// MARK: - Implementation

class DependencyInversionImplementation {
    func run() {
        
    }
}
