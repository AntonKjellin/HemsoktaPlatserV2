//
//  PlaceDetailView.swift
//  HemsoktaPlatserV2
//
//  Created by Anton Kjellin on 2022-11-17.
//

import SwiftUI

struct PlaceDetailView: View {
    
    @ObservedObject var vm : ViewModel
    let currentPlace: HPlace
    
    var body: some View {
        VStack{
                    Image(currentPlace.title)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxWidth: .infinity, maxHeight: 400)
                    HStack{
                        Text(currentPlace.title)
                            .font(.title)
                            .bold()
                            .padding(.leading)
                        Spacer()
                        Button(action: { vm.toggleFav(place: currentPlace)}, label: {
                            Image(systemName: vm.contains(currentPlace) ? "bookmark.fill" : "bookmark")
                        })
                        .padding(.trailing)
                    }
            
            Text(currentPlace.mainText)
                .padding()
            Spacer()
        }
        .navigationTitle(currentPlace.title)
    }
}

struct PlaceDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PlaceDetailView(vm: ViewModel(), currentPlace: HPlace(id: 2, title: "Svaneholms Slott", description: "This is it boys", mainText: "Lorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem Ipsum", located: "Skurup",latitude: 2, longitude: 2))
    }
}
