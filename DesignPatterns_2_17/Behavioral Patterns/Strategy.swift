//
//  Strategy.swift
//  DesignPatterns_2_17
//
//  Created by Лаура Есаян on 20.05.2020.
//  Copyright © 2020 LY. All rights reserved.
//

import UIKit

protocol Route {
    func calculateRoute(from start: CGPoint, to finish: CGPoint)
}

class CarRoute: Route {
    func calculateRoute(from start: CGPoint, to finish: CGPoint) {
        print("Just made a lot of complicated calculations and gave as the car route")
    }
}

class PlaneRoute: Route {
    func calculateRoute(from start: CGPoint, to finish: CGPoint) {
        print("Just made a lot of complicated calculations and gave as the plane route")
    }
}

class ShipRoute: Route {
    func calculateRoute(from start: CGPoint, to finish: CGPoint) {
        print("Just made a lot of complicated calculations and gave as the ship route")
    }
}

class RouteCalculation {
    let route: Route
    
    init(route: Route) {
        self.route = route
    }
}
