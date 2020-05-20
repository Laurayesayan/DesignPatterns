//
//  Facade.swift
//  DesignPatterns_2_17
//
//  Created by Лаура Есаян on 19.05.2020.
//  Copyright © 2020 LY. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameScene: SKScene {
    // some game scene
}

class GameViewFacade {
    let viewController: UIViewController
    let gameScene: GameScene
    
    init(view: UIViewController, gameScene: GameScene) {
        self.viewController = view
        self.gameScene = gameScene
    }
    
    func setGameScene() {
        if let view = viewController.view as! SKView? {
            gameScene.size = viewController.view.bounds.size
            gameScene.anchorPoint = CGPoint(x: 0.5, y: 0.5)
            gameScene.scaleMode = .aspectFill
            
            view.presentScene(gameScene)
            
            view.ignoresSiblingOrder = true
            
            view.showsFPS = true
            view.showsNodeCount = true
        }
    }
}
