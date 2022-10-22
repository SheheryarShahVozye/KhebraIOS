//
//  OrderLocation.swift
//  Khebra
//
//  Created by Sheheryar on 24/09/2022.
//

import SwiftUI
import GoogleMaps

struct OrderLocation: View {
    @State var markers: [GMSMarker] = []
    @State var selectedMarker: GMSMarker?
    var body: some View {
        ZStack{
            MapViewControllerBridge(markers: $markers, selectedMarker: $selectedMarker, cityname: .constant(""), locationSearchService: LocationSearchService(),hotelsCheck: .constant(false), onAnimationEnded: {
                
                }, mapViewWillMove: { (isGesture) in
                  guard isGesture else { return }
                
                })
        }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            .ignoresSafeArea(.all)
    }
}

struct OrderLocation_Previews: PreviewProvider {
    static var previews: some View {
        OrderLocation()
    }
}
