//
//  ChooseOnMapScreen.swift
//  Khebra
//
//  Created by Sheheryar on 03/09/2022.
//

import SwiftUI
import GoogleMaps

struct ChooseOnMapScreen: View {
    @State var markers: [GMSMarker] = []
    @State var selectedMarker: GMSMarker?
    @ObservedObject var locationSearchService = LocationSearchService()
    @EnvironmentObject var viewRouter: ViewRouter
    @EnvironmentObject var serviceManager: ServiceManager
    @State var address: String = ""
    var body: some View {
        ZStack{
            MapViewControllerBridge(markers: $markers, selectedMarker: $selectedMarker, cityname: .constant(""), locationSearchService: LocationSearchService(),hotelsCheck: .constant(false), onAnimationEnded: {
                
                }, mapViewWillMove: { (isGesture) in
                  guard isGesture else { return }
                
                })
            VStack{
                HStack{
                    Image("chevron_right")
                       .scaledToFit()
                    
                    RoundedRectangle(cornerRadius: 5)
                         .frame(width: UIScreen.main.bounds.width - 120, height: 45, alignment: .center)
                         
                         .foregroundColor(Color("White"))
                         .shadow(radius: 1)
                         .overlay(
                            HStack{
                                TextField(serviceManager.selectedLocation ?? "", text: .constant(""))
                            }.padding(.leading)
                         )
                    Image("Group 1178")
                        .scaledToFit()
                }.padding(.horizontal)
                    .padding(.top,50)
                Spacer()
                
                OrderButton(title: "Choose the current location", callback: {
                    viewRouter.currentPage = "CreateOrder"
                }).padding(.vertical,30)
                
            }
        }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            .ignoresSafeArea(.all)
            .onAppear(perform: {
                locationSearchService.getAddressFromLatLon(AppUtil.CurrentLocationLatitude ?? 0.0,
                                                           AppUtil.CurrentLocationLongitude ?? 0.0, success: { result in
                  
                    
                    let marker = GMSMarker(position: CLLocationCoordinate2D(latitude: AppUtil.CurrentLocationLatitude ?? 0.0,
                                                                            longitude: AppUtil.CurrentLocationLongitude ?? 0.0))
                    marker.title = result.administrativeArea ?? ""
                    marker.icon = UIImage(named: "locationIcons")
                    selectedMarker = marker
                    
                }, failure: { _ in
                    
                })
            })
    }
}

struct ChooseOnMapScreen_Previews: PreviewProvider {
    static var previews: some View {
        ChooseOnMapScreen()
    }
}


