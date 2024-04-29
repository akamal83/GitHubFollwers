//
//  Date+Ext.swift
//  GitHubFollwers
//
//  Created by Ahmed Kamal on 27/04/2024.
//

import Foundation

extension Date {
    
    func convertToMonthYearFormat() -> String{
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM yyyy"
        return dateFormatter.string(from: self)
    }
}
