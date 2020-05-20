//
//  Visitor.swift
//  DesignPatterns_2_17
//
//  Created by Лаура Есаян on 20.05.2020.
//  Copyright © 2020 LY. All rights reserved.
//

import Foundation

protocol Visitor {
    func visitShere(figure: Shere)
    func visitCube(figure: Cube)
}

protocol GameNode {
    func accept(visitor: Visitor)
}

class Shere: GameNode {
    private let radius: Float
    
    init(radius: Float) {
        self.radius = radius
    }
    
    func accept(visitor: Visitor) {
        visitor.visitShere(figure: self)
    }
    
    func getRadius() -> Float {
        return self.radius
    }
}

class Cube: GameNode {
    private let width: Float
    
    init(width: Float) {
        self.width = width
    }
    
    func accept(visitor: Visitor) {
        visitor.visitCube(figure: self)
    }
    
    func getWidth() -> Float {
        return self.width
    }
}

class ConcreteVisitor1: Visitor {
    func visitShere(figure: Shere) {
        print(figure.getRadius())
    }
    
    func visitCube(figure: Cube) {
        print(figure.getWidth())
    }
    
}
