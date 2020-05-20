//
//  Composite.swift
//  DesignPatterns_2_17
//
//  Created by Лаура Есаян on 18.05.2020.
//  Copyright © 2020 LY. All rights reserved.
//

import Foundation

protocol Chest {
    var parent: Chest? {get set}
    
    func isComposite() -> Bool
    func openChest() -> String
}

class SmallChest: Chest {
    
    var parent: Chest?
    private var item: String
    
    init(item: String) {
        self.item = item
    }
    
    func openChest() -> String {
        return "\(item)"
    }
    
    func isComposite() -> Bool {
        return false
    }
}

class LargeChest: Chest {
    var parent: Chest?
    var children: [Chest]
    
    init(chests: [Chest]) {
        children = chests
    }
    
    func openChest() -> String {
        let result = children.map{$0.openChest()}
        return "You found: \(result.joined(separator: ", "))"
    }
    
    func isComposite() -> Bool {
        return true
    }
}

