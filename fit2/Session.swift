//
//  Session.swift
//  fit
//
//  Created by Ryan on 2015-02-16.
//  Copyright (c) 2015 Natazhat LLC. All rights reserved.
//

import Foundation

class Session {
    
    private let date : NSDate
    private let workout : Workout
    
    init(workout : Workout) {
        self.date = NSDate()
        self.workout = workout
    }
    
    // Getters
    
    func getDate() -> NSDate {
        return self.date
    }
    
    // From the given days date in the form "YYYY-MM-DD", provide its assigned Integer value
    // Ex: Sunday -> 1, Monday -> 2, Tuesday -> 3
    
    func getDayOfWeek( today : String) -> Int? {
        let formatter = NSDateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        if let todayDate = formatter.dateFromString(today) {
            let myCalendar = NSCalendar(calendarIdentifier: NSGregorianCalendar)!
            let myComponents = myCalendar.components(.WeekdayCalendarUnit, fromDate: todayDate)
            let weekDay = myComponents.weekday
            return weekDay
        } else {
            return nil
        }
    }
    
    func getWorkout() -> Workout {
        return self.workout
    }
    
    
}