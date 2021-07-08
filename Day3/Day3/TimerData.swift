//
//  TimerData.swift
//  Day3
//
//  Created by kpu on 2021/07/07.
//

import Foundation


class TimerData {
    var timerCount = 0
    var timer: Timer?
    init() {
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true ){
            timer in 
        }
    }
}
