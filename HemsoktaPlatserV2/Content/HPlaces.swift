//
//  HPlaces.swift
//  HemsoktaPlatserV2
//
//  Created by Anton Kjellin on 2022-12-03.
//

import Foundation

var Hplaces: [HPlace] = load("HauntedPlaces.json")

func load<T:Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else{
        fatalError("couldnt find")
    }
    
    do{
       data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldnt load")
    }
    
    do{
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("couldnt parse")
    }
}
