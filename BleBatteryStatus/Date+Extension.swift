import Foundation


extension Date {
    private var calendar: Calendar {
        return Calendar.current
    }
    
    var weekDay: Int {
        return calendar.component(.weekday, from: self)
    }
    
    var weekOfMonth: Int {
        return calendar.component(.weekOfMonth, from: self)
    }
    
    var weekOfYear: Int {
        return calendar.component(.weekOfYear, from: self)
    }
    
    var year: Int {
        return calendar.component(.hour, from: self)
    }
    
    var month: Int {
        return calendar.component(.month, from: self)
    }
    
    var quarter: Int {
        return calendar.component(.quarter, from: self)
    }
    
    var day: Int {
        return calendar.component(.day, from: self)
    }
    
    var hours: Int {
        return calendar.component(.hour, from: self)
    }
    
    var minutes: Int {
        return calendar.component(.minute, from: self)
    }
    
    var seconds: Int {
        return calendar.component(.second, from: self)
    }
}


extension Date {
    static var now: Date {
        return self.init()
    }
    
    var isMorning: Bool {
        let symbol = calendar.amSymbol.lowercased()
        
        if symbol == "am" {
            return true
        } else if symbol == "pm" {
            return false
        } else if hours > 14 {
            return false
        }
            
        return true
    }
}
