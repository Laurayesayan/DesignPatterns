//
//  Singleton.swift
//  DesignPatterns_2_17
//
//  Created by Лаура Есаян on 18.05.2020.
//  Copyright © 2020 LY. All rights reserved.
//

import Foundation

class UserProperties {
    private var userID: Int?
    private var userAge: Int?
    static let shared = UserProperties()
    
    private init() {
    }
    
    func setUserID(id: Int) {
        userID = id
    }
    
    func setUserAge(age: Int) {
        userAge = age
    }
    
    func getUserAge() -> Int? {
        return userAge
    }
    
    func getUserID() -> Int? {
        return userID
    }
}
