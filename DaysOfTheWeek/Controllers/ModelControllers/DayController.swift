//
//  DayController.swift
//  DaysOfTheWeek
//
//  Created by Kvng Eko on 11/13/22.
//

import Foundation

class DayController {
    static var daysOfTheWeek : [Day] {
        let sunday    = Day(name: "Sunday", origin: "Added to the Roman calender by Emperor Constantine.")
        let monday    = Day(name: "Monday", origin: "Added to the Roman calender by Emperor Constantine.")
        let tuesday   = Day(name: "Tuesday", origin: "Tuesday come from Tiu, or tiw. the Anglo-Saxon name for Tyr, the Norse god of war.")
        let wednesday = Day(name: "Wednesday", origin: "Odin, also known as Woden, the supreme diety whom Wednesday was named.")
        let thursday  = Day(name: "Thursday", origin: "Originates from Thor, the Norse god of thunder.")
        let friday    = Day(name: "Friday", origin: "Derived from Frigga, the wife of Odin, representing love and beauty.")
        let saturday  = Day(name: "Saturday", origin: "Saturn, the Roman god of fun and feasting.")
        
        return [sunday, monday,tuesday,wednesday,thursday,friday,saturday]
    }
}
