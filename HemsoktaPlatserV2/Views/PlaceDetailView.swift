//
//  PlaceDetailView.swift
//  HemsoktaPlatserV2
//
//  Created by Anton Kjellin on 2022-11-17.
//

import SwiftUI

struct PlaceDetailView: View {
    
    let currentPlace: HPlace
    
    var body: some View {
        VStack{
            Text(currentPlace.title)
            Text(currentPlace.mainText)
        }
        .navigationTitle(currentPlace.title)
    }
}

struct PlaceDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PlaceDetailView(currentPlace: HPlace(id: 2, title: "Heeej", mainText: "HAHAHAHAH", saved: true))
    }
}
