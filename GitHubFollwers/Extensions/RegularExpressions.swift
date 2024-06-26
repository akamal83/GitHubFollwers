import Foundation

extension String {
    var isValidEmail: Bool {
        let emailFormat = "[A-Z0_9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailFormat)
        return emailPredicate.evaluate(with: self)
    }
    
    var isValidPassword: Bool {
        //Regex stricts to 8 characters minimum, 1 capital letter, 1 lowercase letter, and 1 number
        let passwordFormat = "(?=.*[A-Z])(?=.*[0-9])(?=.*[a-z]).{8,}"
        let passwordPredicate = NSPredicate(format: "SELF MATCHES %@", passwordFormat)
        return passwordPredicate.evaluate(with: self)
    }
}
//Regex for GitHub username:
//Alphanumeric
//can include "-"
//no consecutive "-"
//can't start or end with "-"
