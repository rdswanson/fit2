//
//  Aerobic.swift
//  fit
//
//  Created by Ryan on 2015-02-08.
//  Copyright (c) 2015 Natazhat LLC. All rights reserved.
//

import Foundation

class Aerobic: Movement {
    
    private var duration: Int
    
    init(movementName: String, movementDescrip: String, movementDuration: Int) {
        self.duration = movementDuration
        super.init(movementName: movementName, movementDescrip: movementDescrip)
    }
    
    // Getters and Setters
    
    func getDuration() -> Int {
        return self.duration
    }
    
    func setDuration(newDuration: Int) {
        self.duration = newDuration
    }

}