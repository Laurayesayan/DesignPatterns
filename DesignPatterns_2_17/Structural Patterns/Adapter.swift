//
//  Adapter.swift
//  DesignPatterns_2_17
//
//  Created by Лаура Есаян on 18.05.2020.
//  Copyright © 2020 LY. All rights reserved.
//

import Foundation

class Parrot {
    let length: Float = 20
}

// Target class
class BoaInParrots {
    private var parrots: [Parrot] = []
    
    func getBoaInParrots() -> [Parrot] {
        return parrots
    }
}

// Class to adapt
class Boa {
    var length: Float
    
    init(length: Float) {
        self.length = length
    }
    
    func getLength() -> Float{
        return length
    }
}

// Adapter
class ParrotsAdapter: BoaInParrots {
    private var boa: Boa
    
    init(boa: Boa) {
        self.boa = boa
    }
    
    override func getBoaInParrots() -> [Parrot] {
        var parrotsInBoa: [Parrot] = []
        let parrotsCount = Int(boa.length / Parrot().length)
        
        for _ in 0..<parrotsCount {
            parrotsInBoa.append(Parrot())
        }
        
        return parrotsInBoa
    }
}
