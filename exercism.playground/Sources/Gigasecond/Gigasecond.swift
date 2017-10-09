import Foundation

class Gigasecond {
    
    var from: String
    let dateFormatter = DateFormatter()
    let dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
    
    init?(from: String) {
        self.from = from
        dateFormatter.dateFormat = dateFormat
    }
    
    private func convertStringToDate(strDate: String) -> Date {
        return dateFormatter.date(from: strDate)!
    }
    
    private func calculate() -> Date {
        let date = convertStringToDate(strDate: from)
        let timeInterval = TimeInterval(exactly: 1000000000)!
        return date.addingTimeInterval(timeInterval)
    }
    
    var description: String {
        let gigasecondDate = calculate()
        return dateFormatter.string(from: gigasecondDate)
    }
}
