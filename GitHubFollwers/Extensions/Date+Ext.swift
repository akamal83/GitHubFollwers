import Foundation

extension Date {
    
    func convertToMonthYearFormat() -> String{
        return formatted(.dateTime.month(.wide).year(.twoDigits))
    }
}
