//
//  Place.swift
//  HemsoktaPlatserV2
//
//  Created by Anton Kjellin on 2022-11-17.
//

import Foundation

struct HPlace: Identifiable, Codable {
    var id: Int
    var title: String
    var mainText: String
    var saved: Bool
    
    static var samplePlaces: [HPlace] {
        var tempList = [HPlace]()
        
        for i in 1...20 {
            let id = i
            let title = "Place \(i)"
            let mainText = "This is the main text"
            tempList.append(HPlace(id: id, title: title, mainText: mainText, saved: false))
        }
        return tempList
    }
    
}
