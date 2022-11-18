//
//  MapView.swift
//  HemsoktaPlatserV2
//
//  Created by Anton Kjellin on 2022-11-17.
//

import SwiftUI

struct MapView: View {
    var body: some View {
        Text("Karta")
            .frame(width: 360, height: 750)
            .background(Color.green)
            .ignoresSafeArea()
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
