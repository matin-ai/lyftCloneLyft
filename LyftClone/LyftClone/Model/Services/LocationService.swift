//
//  LocationService.swift
//  LyftClone
//
//  Created by StateOfTN-STS on 11/23/20.
//

import Foundation

class LocationService {
    
    static let sharted = LocationService()
    private var rencentLocations = [Location]()
    private init () {
        let locationsUrl = Bundle.main.url(forResource: "locations", withExtension: "json ")!
        let data = try! Data(contentsOf: locationsUrl)
        let decoder = JSONDecoder()
        rencentLocations = try! decoder.decode([Location].self, from: data)
        
    }
    
    func getRecentLocations() -> [Location]{
        return rencentLocations
    }
}
