//
//  TakeDate.swift
//  PicPayChallenge
//
//  Created by Kacio Henrique Couto Batista on 24/10/19.
//  Copyright © 2019 Kacio. All rights reserved.
//

import Foundation
class DateFormart{
    let date:Date
    let calendar:Calendar
    init(){
        self.date = Date()
        self.calendar = Calendar.current
    }
     func getData() -> String{
        let year = self.calendar.component(.year, from: date)
        let month = self.calendar.component(.month, from: date)
        let day = self.calendar.component(.day, from: date)
        let hour = self.calendar.component(.hour, from: date)
        let minute = self.calendar.component(.minute, from: date)
        
        return "\(day)/\(month)/\(year) às \(hour):\(minute)"
    }
}
