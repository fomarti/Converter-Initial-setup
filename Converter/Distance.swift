/**
 *
 * Applications development for mobile devices
 * -------------------------------------------
 *
 * Distance class as a model for the Converter App
 *
 *
 * @author Francisco Martinez
 *
 * This example is based on the source code from the book
 * of Craig Grummit - iOS Development with Swift
 * Copyright © 2016 Craig Grummitt. All rights reserved.
 *
 *
 *
 */

import UIKit
//: # Distance class
//:
class Distance {
    static let kmPerMile = 1.60934
    
    var miles:Double
    var km:Double {
        get {
            return Distance.toKm(miles: miles)
        }
        set(newKm) {
            miles = Distance.toMiles(km: newKm)
        }
    }
    init(miles:Double) {
        self.miles = miles
    }
    init(km:Double) {
        self.miles = Distance.toMiles(km: km)
    }
    static func toKm(miles:Double)->Double {
        return miles * kmPerMile
    }
    static func toMiles(km:Double)->Double {
        return km / kmPerMile
    }
}

