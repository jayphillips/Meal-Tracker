//
//  Meal.swift
//  Meal Tracker
//
//  Created by Jay Phillips on 6/11/20.
//  Copyright © 2020 devNasium. All rights reserved.
//

import Foundation

struct Meal {
    private (set) public var name: String
    private (set) public var food: [Food]
    
    init(name: String, food: [Food]) {
        self.name = name
        self.food = food
    }
    
}

