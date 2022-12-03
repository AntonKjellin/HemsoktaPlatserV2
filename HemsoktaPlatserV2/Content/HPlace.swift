//
//  Place.swift
//  HemsoktaPlatserV2
//
//  Created by Anton Kjellin on 2022-11-17.
//

import Foundation

struct HPlace: Identifiable, Codable {
    let id: Int
    let title: String
    let description: String
    let mainText: String
    let located: String
    var latitude: Double
    var longitude: Double
    
    
    static var samplePlaces: [HPlace] {
        var tempList = [HPlace]()
        
        for i in 1...5 {
            let id = i
            let title = "Place \(i)"
            let description = "This is the desription..."
            let mainText = "This is the main text..."
            let located = "Skurup"
            let latitude = Double.random(in: 55.6...56.4)
            let longitude = Double.random(in: 13.2...13.9)
            tempList.append(HPlace(id: id, title: title, description: description, mainText: mainText, located: located, latitude: latitude, longitude: longitude))
        }
        return tempList
    }
}
