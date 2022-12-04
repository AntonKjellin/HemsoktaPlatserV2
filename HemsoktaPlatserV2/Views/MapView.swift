//
//  MapView.swift
//  HemsoktaPlatserV2
//
//  Created by Anton Kjellin on 2022-11-17.
//

import SwiftUI
import MapKit


struct MapView: View {
    
    @ObservedObject var vm : ViewModel
    
    @State var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 56, longitude: 13.6), span: MKCoordinateSpan(latitudeDelta: 1.5, longitudeDelta: 1.5))
    
    var body: some View {
        NavigationView{
            Map(coordinateRegion: $region, annotationItems: vm.places){ place in
                MapAnnotation(coordinate: CLLocationCoordinate2D(latitude: place.latitude , longitude: place.longitude )){
                    NavigationLink(destination: PlaceDetailView(vm: vm, currentPlace: place)){
                        VStack{
                            Image(place.title)
                                .resizable()
                                .frame(width: 60, height: 60)
                                .clipShape(Circle())
                                .overlay{
                                    Circle()
                                        .stroke(Color.purple, lineWidth: 3)
                                }
                            Text(place.title)
                                .font(.footnote)
                        }
                    }
                    
                }
            }
            .ignoresSafeArea(edges: .top)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .onAppear(){
                
            }
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(vm: ViewModel())
    }
}
