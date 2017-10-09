import Foundation

class Year {
    
    private var calendarYear: Int
    
    init(calendarYear: Int) {
        self.calendarYear = calendarYear
    }
    
    var isLeapYear: Bool {

        guard calendarYear % 4 != 0 || (calendarYear % 100 == 0 && calendarYear % 400 != 0) else {
            return true
        }
        
        return false
    }
}
