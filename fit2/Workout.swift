//
//  Workout.swift
//  fit
//
//  Created by Ryan on 2015-01-29.
//  Copyright (c) 2015 Natazhat LLC. All rights reserved.
//

import Foundation

class Workout {
    
    private var workoutName : String
    private var workoutDescrip : String
    private var movements: [Movement]
    
    // Initialize a workout as an empty list of movements
    // Initialization
    
    init(name : String, descrip : String) {
        self.workoutName = name
        self.workoutDescrip = descrip
        self.movements = []
    }
    
    // Add a movement to the workout
    // Modifies: this
    // Effects: Append a new movement to the workout
    
    func addMovement(move : Movement) {
        self.movements.append(move)
    }
    
    // Modifies: this
    // Effects: Check if the given movement is part of the workout
    //          and remove it if found.
    
    func removeMovement(move : Movement) {
        for var i : Int = 0 ; i < movements.count ; i++ {
            if movements[i].checkEquiv(move) {
                movements.removeAtIndex(i)
            }
        }
    }
    
    // Getters and Setters
    
    func getWorkoutName() -> String {
        return self.workoutName
    }
    
    func getWorkoutDescrip() -> String {
        return self.workoutDescrip
    }
    
    func getMovements() -> [Movement] {
        return self.movements
    }
    
    func setworkoutName(newName : String) {
        self.workoutName = newName
    }
    
    func setworkoutDescrip(newDescrip : String) {
        self.workoutDescrip = newDescrip
    }
    
}
