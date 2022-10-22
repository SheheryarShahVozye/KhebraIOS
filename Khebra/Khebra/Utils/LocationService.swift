//
//  LocationService.swift
//  SmartBookings
//
//  Created by Sheheryar on 06/08/2022.
//

import Combine
import CoreLocation
import Foundation
import MapKit
import SwiftUI

class  LocationSearchService: NSObject, ObservableObject, MKLocalSearchCompleterDelegate, CLLocationManagerDelegate {
    @Published var searchQuery = ""
    var completer: MKLocalSearchCompleter
    @Published var completions: [MKLocalSearchCompletion] = []
    private let locationManager = CLLocationManager()
    @Published var locationStatus: CLAuthorizationStatus?
    @Published var lastLocation: CLLocation?
    @Published var lastGoogleLoc: CLLocationCoordinate2D?
    var cancellable: AnyCancellable?

    override init() {
        completer = MKLocalSearchCompleter()
        super.init()
        cancellable = $searchQuery.assign(to: \.queryFragment, on: self.completer)
        completer.delegate = self
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    }

    var statusString: String {
        guard let status = locationStatus else {
            return "unknown"
        }

        switch status {
        case .notDetermined:
            return "notDetermined"
        case .authorizedWhenInUse:
            return "authorizedWhenInUse"
        case .authorizedAlways:
            return "authorizedAlways"
        case .restricted:
            return "restricted"
        case .denied:
            return "denied"
        default:
            return "unknown"
        }
    }

    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        locationStatus = status
       // print(#function, statusString)
    }

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.last else { return }
        lastLocation = location
      
        AppUtil.CurrentLocationLatitude = lastLocation?.coordinate.latitude ?? 0.0
        AppUtil.CurrentLocationLongitude = lastLocation?.coordinate.longitude ?? 0.0
      //  getAddressFromLatLon(<#T##pdblLatitude: Double##Double#>, <#T##pdblLongitude: Double##Double#>)
       // print(#function, location)
    }
    func getAddressFromLatLon(_ pdblLatitude: Double, _ pdblLongitude: Double, success: @escaping (CLPlacemark) -> Void, failure: @escaping (String) -> Void)  {
        do {
            var center = CLLocationCoordinate2D()
            let lat = Double("\(pdblLatitude)")!
            // 21.228124
            let lon = Double("\(pdblLongitude)")!
            // 72.833770
            let ceo = CLGeocoder()
            center.latitude = lat
            center.longitude = lon
            var location = ""
            let loc = CLLocation(latitude: center.latitude, longitude: center.longitude)

            ceo.reverseGeocodeLocation(loc, completionHandler: {placemarks, error in
                    if error != nil {
                        print("reverse geodcode fail: \(error!.localizedDescription)")
                    }

                if placemarks != nil && !(placemarks?.isEmpty ?? true) {
                        let pm = placemarks! as [CLPlacemark]
                        if !pm.isEmpty {
                          //  GlobalVars.CurrentLocation.append(placemarks![0])
                            let pm = placemarks![0]
                            
                            location += pm.subThoroughfare ?? "" + " "
                            location += pm.thoroughfare ?? "" + " "
                            location += pm.subLocality ?? "" + " "
                            location += pm.locality ?? ""  + " "
                            location += " "
                            location += pm.country ?? "" + " "
                           
                            print(pm.country ?? "")
                            print(pm.locality ?? "")
                            print(pm.subLocality ?? "")
                            print(pm.thoroughfare ?? "")
                            print(pm.postalCode ?? "")
                            print(pm.subThoroughfare ?? "")
                            print(pm.administrativeArea ?? "")
                            print(pm.subAdministrativeArea ?? "")
                            print(pm.region ?? "")
                            print(pm.ocean ?? "")
                           
                            success(pm)
                           /* var addressString: String = ""

                            if pm.subLocality != nil {
                                addressString = addressString + pm.subLocality! + ", "
                            }
                            if pm.thoroughfare != nil {
                                addressString = addressString + pm.thoroughfare! + ", "
                            }
                            if pm.locality != nil {
                                addressString = addressString + pm.locality! + ", "
                            }
                            if pm.country != nil {
                                addressString = addressString + pm.country! + ", "
                            }
                            if pm.postalCode != nil {
                                addressString = addressString + pm.postalCode! + " "
                            }

                            print(addressString)
                             */
                      }
                    }
            })
       
           
        }
        catch{
            failure("Failure")
        }
        }
    func completerDidUpdateResults(_ completer: MKLocalSearchCompleter) {
        self.completions = Array(completer.results.prefix(5))
    }

    func clearResults() {
        self.completions.removeAll()
    }
}
