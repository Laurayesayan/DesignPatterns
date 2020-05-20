//
//  Memento.swift
//  DesignPatterns_2_17
//
//  Created by Лаура Есаян on 20.05.2020.
//  Copyright © 2020 LY. All rights reserved.
//

import UIKit

class PlayerClass {
    let name: String? = nil
    let position: CGPoint? = nil
    let health: Int? = nil
}

protocol GameMemento {
    var date: Date {get}
    var player: PlayerClass {get}
    var level: Int {get}
}

class GameCondition: GameMemento {
    private(set) var date: Date
    private(set) var player: PlayerClass
    private(set) var level: Int
    
    init(player: PlayerClass, level: Int) {
        self.player = player
        self.level = level
        self.date = Date()
    }
}

class Game {
    private var player: PlayerClass
    private var level = 0
    
    init(player: PlayerClass) {
        self.player = player
    }
    
    // There is a lot of game functions that changing condition of game
    
    func save() -> GameMemento {
        return GameCondition(player: player, level: level)
    }
    
    func restore(condition: GameMemento) {
        guard let condition = condition as? GameCondition else { return }
        self.level = condition.level
        self.player = condition.player
    }
}

class GameConditionController {
    private lazy var mementos = [GameMemento]()
    private var game: Game
    
    init(game: Game) {
        self.game = game
    }
    
    func backUp() {
        mementos.append(game.save())
    }
    
    func undo() {
        guard !mementos.isEmpty else { return }
        let removedMemento = mementos.removeLast()
        game.restore(condition: removedMemento)
    }
    
    func showHistory() {
        mementos.forEach({ print($0.date) })
    }
}
