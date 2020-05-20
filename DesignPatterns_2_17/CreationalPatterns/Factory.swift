//
//  Factory.swift
//  DesignPatterns_2_17
//
//  Created by Лаура Есаян on 16.05.2020.
//  Copyright © 2020 LY. All rights reserved.
//

import Foundation

protocol CardDeck {
    func shuffleDeck() -> [String]
    func makeStep() -> String
}

protocol CardGameFabric {
    func createCardDeck() -> CardDeck
}

class DurakGameDeck: CardDeck {
    
    var cards: [String]
    
    init(cards: [String]) {
        self.cards = cards
    }
    
    public func shuffleDeck() -> [String] {
        return cards.reversed()
    }
    
    func makeStep() -> String {
        return "some durak's card"
    }
}

class UnoGameDeck: CardDeck {
    
    var cards: [String]
    
    init(cards: [String]) {
        self.cards = cards
    }
    
    func shuffleDeck() -> [String] {
        return cards.shuffled()
    }
    
    func showFace(of card: Int) {
        print(cards[card])
    }
    
    func makeStep() -> String {
        return "some uno's card"
    }
}

class DurakGame: CardGameFabric {
    var cards: [String]
    
    init(cards: [String]) {
        self.cards = cards
    }

    func createCardDeck() -> CardDeck {
        return DurakGameDeck(cards: cards)
    }
}

class UnoGame: CardGameFabric {
    var cards: [String]
    
    init(cards: [String]) {
        self.cards = cards
    }
    
    func createCardDeck() -> CardDeck {
        return UnoGameDeck(cards: cards)
    }
}

//import SpriteKit
//import GameplayKit
//
//protocol SceneFactory {
//    var scene: SKScene { get }
//    func addNode() -> SKNode
//    func addPlayer(name: String, radius: CGFloat, color: UIColor) -> SKShapeNode
//}
//
//class GameScene: SceneFactory {
//    var scene: SKScene
//
//    init (size: CGSize) {
//        self.scene = SKScene(size: size)
//    }
//
//    func addNode() -> SKNode {
//        return SKNode()
//    }
//
//    func addPlayer(name: String, radius: CGFloat, color: UIColor) -> SKShapeNode {
//        let player = SKShapeNode(circleOfRadius: radius)
//        player.name = name
//        player.fillColor = color
//        return player
//    }
//}
