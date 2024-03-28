//
//  DateHelper.swift
//  swift_2_project
//
//  Created by Артур on 28.03.2024.
//

import Foundation

final class DateHelper {
    
    static func getDate(date: Date?) -> String {
        
        guard let date = date else {
            return ""
        }
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd MMMM yyyy HH:mm"
        dateFormatter.locale = Locale(identifier: "ru_RU")
        
        return dateFormatter.string(from: date)
    }
}
