//
//  MenuDate.swift
//  fit
//
//  Created by Ryan on 2015-02-18.
//  Copyright (c) 2015 Natazhat LLC. All rights reserved.
//

import Foundation

class MenuDate {
    
    var date : NSDate
    var calendar : NSCalendar
    var components : NSDateComponents
    var month : Int
    var day : Int
    
    init() {
        
        self.date = NSDate()
        self.calendar = NSCalendar.currentCalendar()
        self.components = calendar.components(.CalendarUnitHour | .CalendarUnitMinute |
            .CalendarUnitMonth | .CalendarUnitYear | .CalendarUnitDay, fromDate: date)
        self.month = components.month
        self.day = components.day
    }
    
    // Format the date for display on the menu
    
    func formatDisplay() -> String {
        var monthName : String = self.convertMonth()
        var day : Int = self.getDay()
        let display : String = "\(monthName) \(day)"
        return display
    }
    
    // Convert the month from Int to String Name
    
    func convertMonth() -> String {
        var monthInt = self.getMonth()
        if (monthInt == 1) {
            return "January"
        } else if (monthInt == 2) {
            return "February"
        } else if (monthInt == 3) {
            return "March"
        } else if (monthInt == 4) {
            return "April"
        } else if (monthInt == 5) {
            return "May"
        } else if (monthInt == 6) {
            return "June"
        } else if (monthInt == 7) {
            return "July"
        } else if (monthInt == 8) {
            return "August"
        } else if (monthInt == 9) {
            return "September"
        } else if (monthInt == 10) {
            return "October"
        } else if (monthInt == 11) {
            return "November"
        } else {
            return "December"
        }
    }
    
    func getMonth() -> Int {
        return self.month
    }
    
    func getDay() -> Int {
        return self.day
    }

}
