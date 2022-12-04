//
//  MainView.swift
//  HemsoktaPlatserV2
//
//  Created by Anton Kjellin on 2022-11-17.
//

import SwiftUI

struct MainView: View {
    
    @StateObject var vm = ViewModel()
    
    var body: some View {
        VStack {
            
            TabView{
                MapView()
                    .tabItem{
                        Label("Map", systemImage: "map")
                    }
                FavoritesView(vm: vm)
                    .tabItem{
                        Label("Saved", systemImage: "bookmark")
                    }
                SearchView(vm: vm)
                    .tabItem{
                        Label("Search", systemImage: "magnifyingglass")
                    }
                
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
