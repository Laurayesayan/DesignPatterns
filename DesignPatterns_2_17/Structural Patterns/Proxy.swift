//
//  Proxy.swift
//  DesignPatterns_2_17
//
//  Created by Лаура Есаян on 20.05.2020.
//  Copyright © 2020 LY. All rights reserved.
//

import Foundation

protocol UserInfo {
    func request()
}

class User: UserInfo {
    let name: String
    let age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func request() {
        print("Handling request")
    }
}

class Proxy: UserInfo {
    private var realUser: User
    
    init(user: User) {
        self.realUser = user
    }
    
    func request() {
        checkAccess() ? realUser.request() : print("Permition denied")
    }
    
    func checkAccess() -> Bool {
        return realUser.age > 18 ? true : false
    }
}
