import Foundation

class SpaceAge {
    
    var seconds: Double
    
    init(_ seconds: Double) {
        self.seconds = seconds
    }
    
    var onEarth: Double {
        return (seconds / secondsPerEarthYear).round(to: 2)
    }
    
    var onMercury: Double {
        return (seconds / (EarthYearOn.mercury.rawValue * secondsPerEarthYear)).round(to: 2)
    }
    
    var onVenus: Double {
        return (seconds / (EarthYearOn.venus.rawValue * secondsPerEarthYear)).round(to: 2)
    }
    
    var onMars: Double {
        return (seconds / (EarthYearOn.mars.rawValue * secondsPerEarthYear)).round(to: 2)
    }
    
    var onJupiter: Double {
        return (seconds / (EarthYearOn.jupiter.rawValue * secondsPerEarthYear)).round(to: 2)
    }
    
    var onSaturn: Double {
        return (seconds / (EarthYearOn.saturn.rawValue * secondsPerEarthYear)).round(to: 2)
    }
    
    var onUranus: Double {
        return (seconds / (EarthYearOn.uranus.rawValue * secondsPerEarthYear)).round(to: 2)
    }
    
    var onNeptune: Double {
        return (seconds / (EarthYearOn.neptune.rawValue * secondsPerEarthYear)).round(to: 2)
    }
    
    let secondsPerEarthYear: Double = 31557600
    enum EarthYearOn: Double {
        case mercury = 0.2408467
        case venus = 0.61519726
        case mars = 1.8808158
        case jupiter = 11.862615
        case saturn = 29.447498
        case uranus = 84.016846
        case neptune = 164.79132
    }
}

extension Double {
    
    func round(to places: Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return Darwin.round(self * divisor) / divisor
    }
}
