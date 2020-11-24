//
//  Location.swift
//  LyftClone
//
//  Created by StateOfTN-STS on 11/23/20.
//

import Foundation


class Location : Codable{
    var title : String
    var subtitle: String
    let lat : Double
    let long : Double
    
    init(title: String, subtitle: String, lat: Double, long: Double){
        self.title = title
        self.subtitle = subtitle
        self.lat = lat
        self.long = long
    }
}
