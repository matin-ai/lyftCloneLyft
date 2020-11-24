//
//  RideQuoteService.swift
//  LyftClone
//
//  Created by StateOfTN-STS on 11/24/20.
//

import Foundation
import CoreLocation

class RideQuoteService {
    static let shared = RideQuoteService()
    
    private init(){}
    
    func getQuotes(pickupLocation:Location, dropOffLocation: Location) -> [RideQuote]{
        let location1 = CLLocation(latitude: pickupLocation.lat, longitude: pickupLocation.long)
        let location2 = CLLocation(latitude: dropOffLocation.lat, longitude: dropOffLocation.long)
        
        let distance = location1.distance(from: location2)
        let minimumAmount = 3.0
        return [
            RideQuote(thumbnail: "ride-shared", name: "shared", capacity: "1-2", price: minimumAmount + (distance*0.5 ), time: Date()),
            RideQuote(thumbnail: "ride-compact", name: "shared", capacity: "4", price: minimumAmount + (distance * 0.9), time: Date()),
            RideQuote(thumbnail: "ride-large", name: "shared", capacity: "6", price: minimumAmount + (distance * 1.5), time: Date())]
    }
}
