//
//  Anaerobic.swift
//  fit
//
//  Created by Ryan on 2015-02-08.
//  Copyright (c) 2015 Natazhat LLC. All rights reserved.
//

import Foundation

class Anaerobic: Movement {
    
    private var setRepScheme: SetRepScheme
    private var weight: Int
    
    init(movementName: String, movementDescrip: String, scheme: SetRepScheme, workingweight: Int) {
        self.setRepScheme = scheme
        self.weight = workingweight
        super.init(movementName: movementName, movementDescrip: movementDescrip)
    }
    
    // Getters and Setters
    
    func getScheme() -> SetRepScheme {
        return self.setRepScheme
    }
    
    func setScheme(newScheme: SetRepScheme) {
        self.setRepScheme = newScheme
    }
    
    func getWeight() -> Int {
        return self.weight
    }
    
    func setWeight(newWeight: Int) {
        self.weight = newWeight
    }
}