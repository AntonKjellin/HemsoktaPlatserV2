//
//  OverView.swift
//  HemsoktaPlatserV2
//
//  Created by Anton Kjellin on 2022-11-20.
//

import SwiftUI

struct PlaceView: View {
    
    @ObservedObject var vm : ViewModel
    @State var isSearchable = false
    @State var isFiltered = false
    @State var searchText = ""
    
    var body: some View {
        NavigationView{
            VStack{
                
                HStack{
                    Spacer()
                    Button{
                        withAnimation(){
                            if isFiltered{
                                isFiltered = false
                            }else{
                                isFiltered = true
                            }
                        }
                    } label: {
                        Image(systemName: "bookmark")
                    }
                    
                    Button{
                            if isSearchable{
                                isSearchable = false
                            }else{
                                isSearchable = true
                        }
                    } label: {
                        Image(systemName: "magnifyingglass")
                    }
                    .padding()
                }
                List{
                    ForEach(isFiltered ? vm.filteredPlaces : vm.places){ place in
                        NavigationLink(destination: PlaceDetailView(vm: vm, currentPlace: place)){
                            VStack{
                                Image(place.title)
                                    .resizable()
                                    .frame(width: 300, height: 200)
                                    .background(.gray)
                                HStack{
                                    VStack(alignment: .leading){
                                        Text(place.title)
                                            .font(.headline)
                                        Text(place.description)
                                            .font(.headline)
                                    }
                                    Spacer()
                                    Image(systemName: vm.contains(place) ? "bookmark.fill" : "bookmark")
                                        .foregroundColor(.accentColor)
                                        .onTapGesture {
                                            withAnimation{
                                                vm.toggleFav(place: place)
                                            }
                                        }
                                }
                            }
                        }
                    }
                }
                .if(isSearchable){ view in
                    view.searchable(text: $searchText)
                }
                
            }
        }
    }
}


extension View {
    @ViewBuilder func `if`<Content: View>(_ condition: Bool, transform: (Self) -> Content) -> some View {
        if condition {
            transform(self)
        } else {
            self
        }
    }
}

struct OverView_Previews: PreviewProvider {
    static var previews: some View {
        PlaceView(vm: ViewModel())
    }
}
