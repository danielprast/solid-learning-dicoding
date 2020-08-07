//
//  Encapsulation.swift
//  Solid Code
//
//  Created by Daniel Prastiwa on 07/08/20.
//  Copyright © 2020 Danielprast. All rights reserved.
//

import Foundation

class DataRepository {
    private var data = [Any]()
    
    func setData() {
        let response = "bla bla bla" /* tons of logical code to retrieve data */
        data.removeAll()
        data.append(response)
    }
    
    func getData() -> [Any] { return data }
}
