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
                if stateChange {
                    GoogleMapsView(longitude: $longitude, latitude: $latitude)
                        .ignoresSafeArea(.all)
                } else {
                    GoogleMapsView(longitude: $longitude, latitude: $latitude)
                        .ignoresSafeArea(.all)
                }
                
            }
            
           
            
            VStack{
               
                Spacer()
               
                VStack{
                    if !serviceSelected {
                        VStack{
                            ZStack{
                                RoundedRectangle(cornerRadius: 30)
                                    .frame(width: UIScreen.main.bounds.width - 50, height: 50, alignment: .center)
                                    .foregroundColor(Color.white)
                                    .shadow(radius: 10)
                                    .overlay(
                                        HStack{
                                            TextField("Searcch", text: $filterString,
                                                      onEditingChanged: { changed in
                                                              print("Changed")
                                                             
                                                            }, onCommit: {
                                                              print("Commited")
                                                                placeAutocomplete(text_input: filterString)
                                                            }).onChange(of: filterString, perform: { value in
                                                                placeAutocomplete(text_input: filterString)
                                                            })
                                                .padding()
                                                

                                            Spacer()
                                            Image(systemName: "magnifyingglass")
                                                .font(.title2)
                                                .foregroundColor(Color.black)
                                                .padding(.trailing)
                                        }
                                    )
                            }
                            .padding(.vertical,20)
                            ScrollView(showsIndicators:false){
                                VStack{
                                    HStack{
                                        Text("Current Location")
                                            .font(.headline)
                                            .foregroundColor(Color("black"))
                                            .fontWeight(.bold)
                                            .multilineTextAlignment(.leading)
                                            .lineLimit(2)
                                            
                                        Spacer()
                                        
                                    }.padding(.horizontal,15)
                                        .onTapGesture{
                                            latitude = locationSearchService.lastLocation?.coordinate.latitude ?? 0.0
                                            longitude = locationSearchService.lastLocation?.coordinate.longitude ?? 0.0
                                            locationSearchService.getAddressFromLatLon(latitude, longitude, success: { _ in
                                                
                                            }, failure: { _ in
                                                
                                            })
                                            SearchText = filterString
                                            
                                            hideKeyboard()
                                            stateChange.toggle()
                                            serviceSelected = true
                                        }
                                    
                                    
                                    ForEach(0 ..< addressArray.count,id:\.self) { arr in
                                        VStack{
                                            HStack{
                                                Text(addressArray[arr])
                                                    .font(.subheadline)
                                                    .foregroundColor(Color("black"))
                                                    .fontWeight(.light)
                                                    .multilineTextAlignment(.leading)
                                                    .lineLimit(2)
                                                    
                                                Spacer()
                                                
                                            }.padding(.horizontal,15)
                                                .onTapGesture{
                                                   latitude = addressLatLong[arr].latitude
                                                    longitude = addressLatLong[arr].longitude
                                                    SearchText = addressArray[arr]
                                                    serviceManager.selectedLocation = SearchText
                                                    hideKeyboard()
                                                    stateChange.toggle()
                                                    serviceSelected = true
                                                }
                                            
                                         //   HorizontalLine(color: Color("White"))
                                        }.padding(.horizontal,5)
                                            .padding(.vertical,5)
                                        
                                       
                                    }
                                }
                            }
                        }.padding(.top,30)
                        Spacer()
                    } else {
                        VStack{
                            HStack{
                                Text(SearchText)
                                    .font(.system(size: 22))
                                    .foregroundColor(Color("black"))
                                    .multilineTextAlignment(.center)
                                    .lineLimit(2)
                               
                            }.padding(.horizontal,30)
                                .padding(.vertical,20)
                                .padding(.top,10)
                            Spacer()
                            HStack{
                                Image(systemName: "xmark.circle.fill")
                                    .font(.title)
                                    .foregroundColor(Color.red)
                                    
                                Text("Cancel")
                                    .font(.headline)
                                    .foregroundColor(Color("black"))
                                    .onTapGesture{
                                        serviceSelected = false
                                    }
                                Spacer()
                                Text("Confirm")
                                    .font(.headline)
                                    .foregroundColor(Color("black"))
                                    .onTapGesture{
                                        
                                        serviceManager.selectedLocation = SearchText
                                        viewRouter.currentPage = "CreateOrder"
                                        
                                       
                                    }
                                Image(systemName: "arrow.right")
                                    .font(.largeTitle)
                                    .foregroundColor(Color("black"))
                                    
                                
                            }.padding(.horizontal)
                                .padding(.vertical,20)
                                .padding(.bottom,30)
                        }
                    }
                    
                    
                    
                    
                   
                     
                    
                }
                .frame(width: UIScreen.main.bounds.width, height: getSafeAreaTop() > 0 ? (serviceSelected == true ? 200 : 400)  : (serviceSelected == true ? 200 : 300), alignment: .center)
                    .background(RoundedCorners(color: Color("B2C1E3"), tl: 0, tr: 0, bl: 0, br: 0))
                    .offset(y: (keyboardcheck == true && keyboardHeight > 0) ? (getSafeAreaTop()  > 0 ? -(keyboardHeight - 30) :  -(keyboardHeight) ) : 0)

                    .onReceive(Publishers.keyboardHeight) {
                        self.keyboardHeight = $0

                    }
                    
                    
                    
                    
                   
                
                
                
//                if stateChange {
//                    PlacePicker(address: $filterString,latitude: $latitude,longitude:$longitude,stateTogg: $stateChange)
//                        .frame(height:300)
//                } else {
//                    PlacePicker(address: $filterString,latitude: $latitude,longitude:$longitude,stateTogg: $stateChange)
//                        .frame(height:300)
//                }
                
            }
            .ignoresSafeArea(.keyboard, edges: .bottom)
            
            
            VStack{
                HStack{
                    
                    Image("chevron_right")
                        .resizable()
                        .frame(width: 25.4, height: 31.17, alignment: .leading)
                        .onTapGesture {
                            viewRouter.goBack()
                        }
                    
                    Spacer()
                    
                   
                    
                }.padding(.horizontal,30)
                    .padding(.vertical,50)
                Spacer()
            }
            

        }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            .background(Color.white)
           // .keyboardAdaptive()
            .ignoresSafeArea(.keyboard, edges: .bottom)
           
            .onAppear(perform: {
                
              
                latitude = locationSearchService.lastLocation?.coordinate.latitude ?? 0.0
                longitude = locationSearchService.lastLocation?.coordinate.longitude ?? 0.0
                locationSearchService.getAddressFromLatLon(latitude, longitude, success: { res in
                   // filterString = res
                    placeAutocomplete(text_input: filterString)
                    stateChange.toggle()
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

