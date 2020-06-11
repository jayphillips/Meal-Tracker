//
//  Food.swift
//  Meal Tracker
//
//  Created by Jay Phillips on 6/11/20.
//  Copyright © 2020 devNasium. All rights reserved.
//

import Foundation

struct Food {
    private (set) public var name: String
    private (set) public var description: String
    
    init(name: String, description: String) {
        self.name = name
        self.description = description
    }
}
