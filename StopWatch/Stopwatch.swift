//
//  Stopwatch.swift
//  StopWatch
//
//  Created by Alex Yang on 2/16/17.
//  Copyright © 2017 Alex Yang. All rights reserved.
//

import Foundation
class StopWatch {
    
    public var startdate: Date
    var timerInstance:Timer?
    init() {
        self.startdate = Date()
        self.timerInstance = nil
    }
    func updateTimer()->String{
        let timedif = startdate.timeIntervalSinceNow
        let minute = Int(timedif/60*(-1))
        let second = Int(timedif.truncatingRemainder(dividingBy: 60)*(-1))
        let ms = Int(timedif.truncatingRemainder(dividingBy: 1)*(-100))
        let timeString = String(format: "%02d:%02d.%02d", minute, second, ms)
        return timeString
    }
    
}
