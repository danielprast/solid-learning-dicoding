//
//  InterfaceSegregation.swift
//  Solid Code
//
//  Created by Daniel Prastiwa on 07/08/20.
//  Copyright © 2020 Danielprast. All rights reserved.
//

import Foundation

// MARK: - Bad Example Code
/*
protocol IPayment {
    func setPaymentName()
    func setAmount()
    func bankID()
    func virtualBankID()
    func accountID()
}

class Gopay : IPayment {
    func setPaymentName() {
        
    }
    
    func setAmount() {
        
    }
    
    func bankID() {
        
    }
    
    func virtualBankID() {
        
    }
    
    func accountID() {
        
    }
}

class Mandiri : IPayment {
    func setPaymentName() {
        // Implementation code
    }
    
    func setAmount(){
        // Implementation code
    }
    
    func bankID(){
        // Implementation code
    }
    
    func virtualBankID(){
        // Implementation code
    }
    
    func accountID(){
        // Implementation code
    }
}
 
class BNI : IPayment {
    func setPaymentName() {
        // Implementation code
    }
    
    func setAmount(){
        // Implementation code
    }
    
    func bankID(){
        // Implementation code
    }
    
    func virtualBankID(){
        // Implementation code
    }
    
    func accountID(){
        // Implementation code
    }
}
*/

// MARK: - Good Example Code

/* Memecah interface menjadi 3 bagian **/

protocol EWalletProvider {
   func accountID()
   func walletProviderID()
}
 
protocol PaymentProvider {
   func paymentName()
   func amount()
}
 
protocol BankProvider {
   func bankID()
   func virtualAccount()
}

class Gopay: EWalletProvider, PaymentProvider {
    func amount() {
        
    }
    
    func walletProviderID() {
        
    }
    
    func accountID() {
        
    }
    
    func paymentName() {
        
    }
}

class OVO: EWalletProvider, PaymentProvider {
    func amount() {
        
    }
    
    func walletProviderID() {
        
    }
    
    func accountID() {
        
    }
    
    func paymentName() {
        
    }
}

class Mandiri : BankProvider, PaymentProvider {
    func paymentName() {
        // Implementation code
    }
    func amount() {
        // Implementation code
    }
    func bankID() {
        // Implementation code
    }
    func virtualAccount() {
        // Implementation code
    }
}
 
class BNI : BankProvider, PaymentProvider {
    func paymentName() {
        // Implementation code
    }
    func amount() {
        // Implementation code
    }
    func bankID() {
        // Implementation code
    }
    func virtualAccount() {
        // Implementation code
    }
}


// MARK: - Implementation

class InterfaceSegregation {
    func run() {
        
    }
}
