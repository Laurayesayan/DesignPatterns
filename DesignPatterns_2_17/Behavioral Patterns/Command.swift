//
//  Command.swift
//  DesignPatterns_2_17
//
//  Created by Лаура Есаян on 20.05.2020.
//  Copyright © 2020 LY. All rights reserved.
//

import UIKit

class Player {
    var position: CGPoint?
    var pointOfShot: CGPoint?
}

typealias CommandToPlayer = (Player) -> Void

func MoveCommand(position: CGPoint? = nil) -> CommandToPlayer {
    return { player in player.position = position }
}

func ShootCommand(pointOfShot: CGPoint? = nil) -> CommandToPlayer {
    return { player in player.pointOfShot = pointOfShot }
}

class PlayerCommands {
    let player: Player
    private var moveCommand = MoveCommand()
    private var shootCommand = ShootCommand()
    
    init(player: Player) {
        self.player = player
    }
    
    func move(to position: CGPoint) {
        moveCommand(player)
    }
    
    func shoot(point: CGPoint) {
        shootCommand(player)
    }
}
