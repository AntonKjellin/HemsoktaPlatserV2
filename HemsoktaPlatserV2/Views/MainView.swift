//
//  MainView.swift
//  HemsoktaPlatserV2
//
//  Created by Anton Kjellin on 2022-11-17.
//

import SwiftUI

struct MainView: View {
    @StateObject var vm = ViewModel()
    @State var vmtest = ViewModel()
    
    var body: some View {
            TabView{
                    MapView(vm: vmtest)
                        .tabItem{
                            Label("Map", systemImage: "map")
                        }
                    
                    PlaceView(vm: vmtest)
                        .tabItem{
                            Label("Search", systemImage: "magnifyingglass")
                        }
            }
        }
    }

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
