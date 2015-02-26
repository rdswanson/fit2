//
//  SetRepScheme.swift
//  fit
//
//  Created by Ryan on 2015-01-29.
//  Copyright (c) 2015 Natazhat LLC. All rights reserved.
//

import Foundation

class SetRepScheme {
    
    private var sets: Int = 0
    private var reps: Int = 0
    private var restBetween: Int = 0
    
    init(sets : Int, reps : Int, rest : Int) {
        self.sets = sets
        self.reps = reps
        self.restBetween = rest
    }
    
    // Getters and Setters
    
    func setSetScheme(newSets : Int) {
        self.sets = newSets
    }
    
    func setRepScheme(newReps : Int) {
        self.reps = newReps
    }
    
    func setRestBetween(newRest : Int) {
        self.restBetween = newRest
    }
    
    func getSetScheme() -> Int {
        return self.sets
    }
    
    func getRepScheme() -> Int {
        return self.reps
    }
    
    func getRestBetween() -> Int {
        return self.restBetween
    }
}