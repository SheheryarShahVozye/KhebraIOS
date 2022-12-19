//
//  LocationScreen.swift
//  Khebra
//
//  Created by apple on 13/11/2022.
//

import SwiftUI
import GoogleMaps
import AVFAudio
import Foundation
import UIKit
import GooglePlaces
import MapKit
import Combine

struct LocationScreen: View {
    @State var latitude: Double = 0.0
    @State var longitude: Double = 0.0
    @State var expand = false
    @State public var filterString: String = ""
    @State private var isSearching = false
    @State private var keyboardHeight: CGFloat = 0
    @State private var keyboardcheck = true
    @EnvironmentObject var viewRouter: ViewRouter
    @EnvironmentObject var serviceManager: ServiceManager
    
    @ObservedObject var locationSearchService  = LocationSearchService()
    @State private var locations = [MKPointAnnotation]()
    @State var coordiantes: [Double] = []
    @State var SearchText: String = ""
    @State var showLocation = false
    @State var serviceSelected = false
    @State var stateChange = false
    @Namespace var namespace
    @State var addressArray:[String] = []
    @State var addressLatLong:[CLLocationCoordinate2D] = []
    @State var hotelsCheck : Bool = true
    @State var selectedMarker: GMSMarker?
    @State var markers: [GMSMarker] =
    AppUtil.serviceLocations.map {
      let marker = GMSMarker(position: $0.coordinate)
      marker.title = $0.name
      marker.icon = UIImage(named: "Group 8274")

      return marker
    }
    @State private var coordinateRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 37.3348, longitude: -122.0090),
                                                             span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
    
    
    
    
    var userLatitude: String {
        return "\(locationSearchService.lastLocation?.coordinate.latitude ?? 0)"
    }
    
    var userLongitude: String {
        return "\(locationSearchService.lastLocation?.coordinate.longitude ?? 0)"
    }
    
    var body: some View {
        ZStack{
            // Map(coordinateRegion: $coordinateRegion)
            VStack{
              
               
                
                MapViewControllerBridge(markers: $markers, selectedMarker: $selectedMarker, cityname: $SearchText, locationSearchService: locationSearchService, hotelsCheck: $hotelsCheck, onAnimationEnded: {
                    locationSearchService.getAddressFromLatLon(AppUtil.addServiceLocationLatitude ?? 0.0, AppUtil.addServiceLocationLongitude ?? 0.0, success: { result in
                       // filterString = res
                        placeAutocomplete(text_input: filterString)
                        stateChange.toggle()
                       
                        serviceManager.selectedLocation += result.subThoroughfare ?? "" + " "
                        serviceManager.selectedLocation += result.thoroughfare ?? "" + " "
                        serviceManager.selectedLocation += result.subLocality ?? "" + " "
                        serviceManager.selectedLocation += result.locality ?? ""  + " "
                        serviceManager.selectedLocation += " "
                        serviceManager.selectedLocation += result.country ?? "" + " "
                        
                        
                        AppUtil.addServiceLocationLatitude =  AppUtil.CurrentLocationLatitude ?? 0.0
                        AppUtil.addServiceLocationLongitude =  AppUtil.CurrentLocationLongitude ?? 0.0
                        
                       
                        
                    }, failure: { _ in
                        stateChange.toggle()
                    })
                    hotelsCheck.toggle()
                },onDragStop: {
                    
                }, mapViewWillMove: { (isGesture) in
                  guard isGesture else { return }
                 // self.zoomInCenter = false
                })
                
            }
           
            
            VStack{
                HStack{
                    
                    Image("chevron_right")
                        .resizable()
                        .frame(width: 25.4, height: 31.17, alignment: .leading)
                        .onTapGesture {
                            viewRouter.goBack()
                        }
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 0)
                           .foregroundColor(Color("FAFCFF"))
                           
                        RoundedRectangle(cornerRadius: 0)
                            .stroke(Color("464646"),lineWidth: 1)
                            .overlay(
                                HStack{
                                    
                                    TextField("City Name, Location", text: $serviceManager.selectedLocation)
                                }.padding(.leading)
                                
                            )
                        
                    }  .frame(width: UIScreen.main.bounds.width - 100 ,height: 40,alignment: .center)
                   
                    
                    Spacer()
                    
                   
                    
                }.padding(.horizontal,30)
                    .padding(.vertical,50)
                Spacer()
                
                OrderButton(title: "Next", callback: {
                    //serviceManager.selectedLocation = SearchText
                    viewRouter.currentPage = "CreateOrder"
                }).padding(.vertical,30)
            }
           
            

        }
       
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            .background(Color.white)
            
            .ignoresSafeArea(.all)
            .keyboardAdaptive()
            .onAppear(perform: {
                

                latitude = locationSearchService.lastLocation?.coordinate.latitude ?? 0.0
                longitude = locationSearchService.lastLocation?.coordinate.longitude ?? 0.0
                locationSearchService.getAddressFromLatLon(latitude, longitude, success: { result in
                   // filterString = res
                    placeAutocomplete(text_input: filterString)
                    stateChange.toggle()
                   
                    SearchText += result.subThoroughfare ?? "" + " "
                    SearchText += result.thoroughfare ?? "" + " "
                    SearchText += result.subLocality ?? "" + " "
                    SearchText += result.locality ?? ""  + " "
                    SearchText += " "
                    SearchText += result.country ?? "" + " "
                    
                    
                    AppUtil.addServiceLocationLatitude =  AppUtil.CurrentLocationLatitude ?? 0.0
                    AppUtil.addServiceLocationLongitude =  AppUtil.CurrentLocationLongitude ?? 0.0
                    
                    let marker = GMSMarker(position: CLLocationCoordinate2D(latitude: AppUtil.CurrentLocationLatitude ?? 0.0,
                                                                            longitude: AppUtil.CurrentLocationLongitude ?? 0.0))
                    marker.title = "Your location"
                    marker.icon = UIImage(named: "Group 599")
                    selectedMarker = marker
                    
                }, failure: { _ in
                    stateChange.toggle()
                })
                
                
                
            }).onTapGesture{
                hideKeyboard()
            }
    }
    
    func getSafeAreaTop()->CGFloat{

            let keyWindow = UIApplication.shared.connectedScenes

                .filter({$0.activationState == .foregroundActive})

                .map({$0 as? UIWindowScene})

                .compactMap({$0})

                .first?.windows

                .filter({$0.isKeyWindow}).first

            

            return (keyWindow?.safeAreaInsets.top ?? 0)

        }
    
    func placeAutocomplete(text_input: String) {
        
        addressArray = []
        addressLatLong = []
        let filter = GMSAutocompleteFilter()
        let placesClient = GMSPlacesClient()
    
        filter.types = ["address"]
        filter.countries = ["SA"]
        
        //geo bounds set for bengaluru region
//        let bounds = GMSCoordinateBounds(coordinate: CLLocationCoordinate2D(latitude: 13.001356, longitude: 75.174399), coordinate: CLLocationCoordinate2D(latitude: 13.343668, longitude: 80.272055))
        
        
        
        placesClient.findAutocompletePredictions(fromQuery: text_input, filter: filter, sessionToken: nil, callback: { (results,error) -> Void in
            if let results = results {
                for result in results {
                    print(result.attributedPrimaryText.string)
                    //print("primary text: \(result.attributedPrimaryText.string)")
                    //print("Result \(result.attributedFullText) with placeID \(String(describing: result.placeID!))")
                    print(result.attributedFullText.string)
                    print(result.attributedPrimaryText.string)
                    
                    
                    addressArray.append(result.attributedFullText.string)
                    
                    placesClient.lookUpPlaceID(result.placeID) { (place, error) -> Void in
                        if error != nil {
                                //show error
                               return
                           }

                           if let place = place {
                             
//                               place.coordinate.longitude //longitude
//                               place.coordinate.latitude //latitude
                               addressLatLong.append(place.coordinate)
                                //Address in string
                           } else {
                               //show error
                           }
                       }
                   
                }
            }
            
        })
        
      
    }
}

struct LocationScreen_Previews: PreviewProvider {
    static var previews: some View {
        LocationScreen()
    }
}

struct GoogleMapsView: UIViewRepresentable {
    @Binding var longitude: Double
    @Binding var latitude: Double
    @State var marker : GMSMarker = GMSMarker()
    let cities = [
        [
            "name": "Yangon",
            "lat": 16.8409,
            "long": 96.1735
        ],
        [
            "name": "Mandalay",
            "lat": 21.9588,
            "long": 96.0891
        ]
    ]
    
    func makeUIView(context: Self.Context) -> GMSMapView {
        let camera = GMSCameraPosition.camera(withLatitude: latitude, longitude: longitude, zoom: 6.0)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        return mapView
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(owner: self)
    }
    
    //    func updateLocationoordinates(coordinates:CLLocationCoordinate2D) {
    //        if marker == nil
    //        {
    //            marker = GMSMarker()
    //            marker.position = coordinates
    //            let image = UIImage(named:"destinationmarker")
    //            marker.icon = image
    //            marker.map = mapPageView
    //            marker.appearAnimation = GMSMarkerAnimation.pop
    //        }
    //        else
    //        {
    //            CATransaction.begin()
    //            //            CATransaction.setAnimationDuration(0.1)
    //            marker.position =  coordinates
    //            CATransaction.commit()
    //        }
    //        print(coordinates)
    //    }
    
    
    func mapView (_ mapView: GMSMapView, didEndDragging didEndDraggingMarker: GMSMarker) {
        
        
      
        print("Drag ended!")
        print("Update Marker data if stored somewhere.")
        
        
    }
    
    
    func updateUIView(_ mapView: GMSMapView, context: Self.Context) {
        //            for city in cities {
        //                let marker : GMSMarker = GMSMarker()
        //                marker.position = CLLocationCoordinate2D(latitude: city["lat"] as! CLLocationDegrees, longitude: city["long"] as! CLLocationDegrees)
        //                marker.title = city["name"] as? String
        //                marker.snippet = "Welcome to \(city["name"] as! String)"
        //                marker.icon = UIImage(named: "Group 8274")
        //                marker.map = mapView
        //            }
        
        // marker : GMSMarker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        marker.title = "Your location"
        //     marker.snippet = "Welcome to \(city["name"] as! String)"
        marker.icon = UIImage(named: "Group 8274")
        marker.map = mapView
        marker.isDraggable = true;
        marker.isDraggable = true
    }
    
    class Coordinator: NSObject, GMSMapViewDelegate {
        let owner: GoogleMapsView       // access to owner view members,
        
        init(owner: GoogleMapsView) {
            self.owner = owner
        }
        
        func mapView (_ mapView: GMSMapView, didEndDragging didEndDraggingMarker: GMSMarker) {
            
            
          
            print("Drag ended!")
            print("Update Marker data if stored somewhere.")
            
            
        }
      
        
        
    }
    
}





struct PlacePicker: UIViewControllerRepresentable {
    @ObservedObject var locationSearchService = LocationSearchService()
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    @Environment(\.presentationMode) var presentationMode
    @Binding var address: String
    @Binding var latitude: Double
    @Binding var longitude: Double
    @Binding var stateTogg: Bool
    func makeUIViewController(context: UIViewControllerRepresentableContext<PlacePicker>) -> GMSAutocompleteViewController {
        
        let autocompleteController = GMSAutocompleteViewController()
        autocompleteController.delegate = context.coordinator
        
        
        let fields: GMSPlaceField = GMSPlaceField(rawValue: UInt(GMSPlaceField.name.rawValue) |
                                                  UInt(GMSPlaceField.placeID.rawValue) | UInt(GMSPlaceField.coordinate.rawValue) | GMSPlaceField.addressComponents.rawValue)
        autocompleteController.placeFields = fields
        
        
        
        let filter = GMSAutocompleteFilter()
        filter.type = .address
        filter.country = "Pak"
        autocompleteController.autocompleteFilter = filter
        
        return autocompleteController
    }
    
    func updateUIViewController(_ uiViewController: GMSAutocompleteViewController, context: UIViewControllerRepresentableContext<PlacePicker>) {
    }
    
    class Coordinator: NSObject, UINavigationControllerDelegate, GMSAutocompleteViewControllerDelegate {
        
        var parent: PlacePicker
        
        init(_ parent: PlacePicker) {
            self.parent = parent
            
        }
        
        
        func viewController(_ viewController: GMSAutocompleteViewController, didAutocompleteWith place: GMSPlace) {
            DispatchQueue.main.async {
                
                print(place.description.description as Any)
                
                
                
                self.parent.address =  place.name!
                self.parent.latitude = place.coordinate.latitude
                self.parent.longitude = place.coordinate.longitude
                self.parent.presentationMode.wrappedValue.dismiss()
                self.parent.stateTogg.toggle()
            }
        }
        
        func viewController(_ viewController: GMSAutocompleteViewController, didFailAutocompleteWithError error: Error) {
            print("Error: ", error.localizedDescription)
        }
        
        func wasCancelled(_ viewController: GMSAutocompleteViewController) {
            parent.presentationMode.wrappedValue.dismiss()
        }
        
    }
}

struct PlaceAnnotationView: View {
    var body: some View {
        ZStack{
            Circle()
                .frame(width: 57, height: 55, alignment: .center)
                .foregroundColor(Color("FEBB12").opacity(0.4))
            Circle()
                .frame(width: 24, height: 25, alignment: .center)
                .foregroundColor(Color("White"))
            
            Circle()
                .frame(width: 14, height: 15, alignment: .center)
                .foregroundColor(Color("FEBB12"))
            
        }.frame(width: 57, height: 55, alignment: .center)
    }
}

