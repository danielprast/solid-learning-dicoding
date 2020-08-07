//
//  FoodExpiry.swift
//  Solid Code
//
//  Created by Daniel Prastiwa on 07/08/20.
//  Copyright © 2020 Danielprast. All rights reserved.
//

import Foundation

class FoodExpiry {
    static func isExpired(date: String) -> Bool {
        var foodDate = NSDate()
        let now = NSDate()
        let dateFormater = DateFormatter()
        dateFormater.dateFormat = "yyyy-mm-dd"
        
        foodDate = dateFormater.date(from: date)! as NSDate
        
        return foodDate.compare(now as Date) == ComparisonResult.orderedDescending
    }
}
