//
//  main.swift
//  Solid Code
//
//  Created by Daniel Prastiwa on 07/08/20.
//  Copyright © 2020 Danielprast. All rights reserved.
//

import Foundation

func main() {
    let runtimePolymorphism = RuntimePolymorphismImplementation()
    runtimePolymorphism.run()
    
    let persian = Kucing()
    persian.color = "Putih"
    persian.height = 24.0
    persian.length = 46.0
    persian.weight = 2.0
    
    //persian.inspect()
    
    let bengal = Kucing(color: "Coklat", height: 22.0, length: 39.0, weight: 2.3)
    
    let anggora = Kucing(color: "Abu Abu", height: 25.0, length: 41.0, weight: 2.4)
    
    let kewan = Cat()
    kewan.walk()
}

main()
