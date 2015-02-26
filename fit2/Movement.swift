//
//  Movement.swift
//  fit
//
//  Created by Ryan on 2015-01-29.
//  Copyright (c) 2015 Natazhat LLC. All rights reserved.
//

import Foundation

class Movement {
    
    private var movementName : String
    private var movementDescrip : String
    private var completed : Bool
    private var targetDays : NSMutableSet // Days of the week represented from Monday (0) to Sunday (6)
    
    
    init(movementName : String, movementDescrip : String) {
        self.movementName = movementName
        self.movementDescrip = movementDescrip
        self.completed = false
        self.targetDays = NSMutableSet()
    }
    
    
    // Selects the days of a week a movement is to be repeated
    // Requires: nothing
    // Modifies: this
    // Effects: Iterates through the 7 days of the week and adds the corresponding
    //          Days a movement is to be completed.
    
    func addTargetDays(days : [Int]) {
        for day in days {
            self.targetDays.addObject(day)
        }
    }
    
    func checkEquiv(move1 : Movement) -> Bool {
        var check =  self.movementName == move1.movementName
        return check
    }
    
    func toggleCompletion() {
        self.completed = !self.completed
    }
    
    // Getters and Setters
    
    func getMovementName() -> String {
        return self.movementName
    }
    
    func setMovementName(newName: String) {
        self.movementName = newName
    }
    
    func getMovementDescrip() -> String {
        return self.movementDescrip
    }
    
    func setMovementDescrip(newDescrip: String) {
        self.movementDescrip = newDescrip
    }
    
    func getCompleted() -> Bool {
        return self.completed
    }
    
    func setCompleted(newComp : Bool) {
        self.completed = newComp
    }
}