//
//  FavoritesView.swift
//  HemsoktaPlatserV2
//
//  Created by Anton Kjellin on 2022-11-17.
//

import SwiftUI

struct FavoritesView: View {
    @StateObject var vm = ViewModel()
    var body: some View {
        
        NavigationView{
            VStack{
                List{
                    ForEach(vm.filteredPlaces){ place in
                        NavigationLink(destination: PlaceDetailView(currentPlace: place)){
                            VStack{
                                Text(place.title + " Bild")
                                    .frame(width: 300, height: 200)
                                    .background(.gray)
                                HStack{
                                    VStack(alignment: .leading){
                                        Text(place.title)
                                            .font(.headline)
                                        Text(place.mainText)
                                            .font(.headline)
                                    }
                                    Spacer()
                                    Image(systemName: vm.contains(place) ? "heart.fill" : "heart")
                                        .foregroundColor(.red)
                                        .onTapGesture {
                                            vm.toggleFav(place: place)
                                        }
                                }
                            }
                        }
                    }
                }
            }
        }    }
}

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView()
    }
}
