//
//  Builder.swift
//  DesignPatterns_2_17
//
//  Created by Лаура Есаян on 18.05.2020.
//  Copyright © 2020 LY. All rights reserved.
//

import Foundation

class Sim {
    var age: Int?
    var body: String?
    var hairStyle: String?
}

class SimAgeBuilder {
    let sim: Sim
    
    init(sim: Sim) {
        self.sim = sim
    }
    
    func setAge(age: Int) {
        sim.age = age
    }
}

class SimHairStyleBuilder {
    let sim: Sim
    
    init(sim: Sim) {
        self.sim = sim
    }
    
    func setEyesColor(hairStyle: String) {
        sim.hairStyle = hairStyle
    }
}

class SimBodyBuilder {
    let sim: Sim
    
    init(sim: Sim) {
        self.sim = sim
    }
    
    func setBodyType(bodyType: String) {
        sim.body = bodyType
    }
}

class DirectorOfSimBuilders {
    func createSimInTwenties(builder: SimAgeBuilder) -> Sim {
        builder.setAge(age: 22)
        return builder.sim
    }
    
    func createJockSim(builder: SimBodyBuilder) -> Sim {
        builder.setBodyType(bodyType: "Jock")
        return builder.sim
    }
    
    func createJockSimWithoutHairs(firstBuilder: SimBodyBuilder, secondBuilder: SimHairStyleBuilder) -> Sim {
        firstBuilder.setBodyType(bodyType: "Jock")
        secondBuilder.setEyesColor(hairStyle: "No hair")
    
        return secondBuilder.sim
    }
}
