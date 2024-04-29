//
//  String+Ext.swift
//  GitHubFollwers
//
//  Created by Ahmed Kamal on 27/04/2024.
//

import Foundation

extension String {
    
    func convertToDate() -> Date? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
        dateFormatter.locale = Locale(identifier: "en_US_POSIX")
        dateFormatter.timeZone = .current

        return dateFormatter.date(from: self)
    }
    
    
    func converttoDisplayFormat() -> String {
        guard let date = self.convertToDate() else { return "N/A"}
        return date.convertToMonthYearFormat()
        
    }
}
