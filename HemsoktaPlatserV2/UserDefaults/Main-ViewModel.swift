//
//  Content-ViewModel.swift
//  HemsoktaPlatserV2
//
//  Created by Anton Kjellin on 2022-11-17.
//

import Foundation

    final class ViewModel: ObservableObject{
        @Published var places = [HPlace]()
        @Published var showingSaved = false
        @Published var savedPlaces = Set<Int>()
        
        var filteredPlaces: [HPlace]{
            return places.filter{savedPlaces.contains($0.id)}
        }
        
        
        private var db = Database()
        
        init() {
            self.savedPlaces = db.load()
            self.places = Hplaces
        }
        
        func contains(_ place: HPlace) -> Bool{
                savedPlaces.contains(place.id)
        }
        
        
        func toggleFav(place: HPlace){
                if contains(place){
                    savedPlaces.remove(place.id)
                } else {
                    savedPlaces.insert(place.id)
                }
                db.save(places: savedPlaces)
        }
    }
        


