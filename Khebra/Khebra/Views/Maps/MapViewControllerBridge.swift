// Copyright 2021 Google LLC
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

//
//  MapViewControllerBridge.swift
//  GoogleMapsSwiftUI
//
//  Created by Chris Arriola on 2/5/21.
//

import GoogleMaps
import SwiftUI

struct MapViewControllerBridge: UIViewControllerRepresentable {
    
    @Binding var markers: [GMSMarker]
    @Binding var selectedMarker: GMSMarker?
    @Binding var cityname: String
    @ObservedObject var locationSearchService : LocationSearchService
    @EnvironmentObject var serviceManager: ServiceManager
    @Binding var hotelsCheck: Bool
    var onAnimationEnded: () -> ()
    var mapViewWillMove: (Bool) -> ()
    
    func makeUIViewController(context: Context) -> MapViewController {
        let uiViewController = MapViewController()
        uiViewController.map.delegate = context.coordinator
        return uiViewController
    }
    
    func updateUIViewController(_ uiViewController: MapViewController, context: Context) {
        markers.forEach { $0.map = uiViewController.map }
        selectedMarker?.map = uiViewController.map
    
        selectedMarker?.isDraggable = true
        selectedMarker?.icon = UIImage(named: "Group 8274")
        animateToSelectedMarker(viewController: uiViewController)
      
    }
    
    func makeCoordinator() -> MapViewCoordinator {
        return MapViewCoordinator(self, _city: cityname)
    }
    
    private func animateToSelectedMarker(viewController: MapViewController) {
        guard let selectedMarker = selectedMarker else {
            return
        }
        
        let map = viewController.map
        if map.selectedMarker != selectedMarker {
            map.selectedMarker = selectedMarker
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                map.animate(toZoom: kGMSMinZoomLevel)
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                    map.animate(with: GMSCameraUpdate.setTarget(selectedMarker.position))
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5, execute: {
                        map.animate(toZoom: 12)
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5, execute: {
                            onAnimationEnded()
                        })
                    })
                }
            }
        }
    }
    
    final class MapViewCoordinator: NSObject, GMSMapViewDelegate {
        var mapViewControllerBridge: MapViewControllerBridge
         var city: String

        @ObservedObject var locationSearchService = LocationSearchService()
        init(_ mapViewControllerBridge: MapViewControllerBridge, _city: String) {
            self.mapViewControllerBridge = mapViewControllerBridge
            city = _city
        }
        
        func mapView(_ mapView: GMSMapView, willMove gesture: Bool) {
            self.mapViewControllerBridge.mapViewWillMove(gesture)
        }
        
        func mapView(_ mapView: GMSMapView, idleAt position: GMSCameraPosition) {
            let coordinate = mapView.projection.coordinate(for: mapView.center)
            print("latitude " + "\(coordinate.latitude)" + " longitude " + "\(coordinate.longitude)")
           // mapView.selectedMarker?.position = position.target
            if !mapViewControllerBridge.hotelsCheck {
            mapViewControllerBridge.locationSearchService.getAddressFromLatLon(coordinate.latitude, coordinate.longitude, success: { result in
                var location = ""
                location += result.subThoroughfare ?? "" + " "
                location += result.thoroughfare ?? "" + " "
                location += result.subLocality ?? "" + " "
                location += result.locality ?? ""  + " "
                location += " "
                location += result.country ?? "" + " "
                
                self.city = result.administrativeArea ?? ""
                self.mapViewControllerBridge.serviceManager.selectedLocation = location
//                self.mapViewControllerBridge.serviceManager.administrativeArea = result.administrativeArea ?? ""
//                self.mapViewControllerBridge.serviceManager.subAdminArea = result.subAdministrativeArea ?? ""
//                self.mapViewControllerBridge.serviceManager.locationCity = result.locality ?? ""
//                self.mapViewControllerBridge.serviceManager.propertyaddres = location
//
                AppUtil.addServiceLocationLongitude = position.target.longitude
                AppUtil.addServiceLocationLatitude = position.target.latitude
                
            }, failure: { _ in
                
            })
            }
            
            
        }
        
        
        func mapView(_ mapView: GMSMapView, didChange position: GMSCameraPosition) {
            print("Update Marker data if stored somewhere.")
            
            if !mapViewControllerBridge.hotelsCheck {
                var destinationLocation = CLLocation()

                destinationLocation = CLLocation(latitude: position.target.latitude,  longitude: position.target.longitude)
                let destinationCoordinate = destinationLocation.coordinate
               // mapView.selectedMarker?.position = destinationCoordinate
                mapView.selectedMarker?.position = position.target
            }
            
         
            
           
        }
        
       
        
        
        func mapView (_ mapView: GMSMapView, didBeginDragging didEndDraggingMarker: GMSMarker) {
            
            
            mapView.animate(toLocation: didEndDraggingMarker.position)
            mapView.selectedMarker = didEndDraggingMarker
            
            var point = mapView.projection.point(for: didEndDraggingMarker.position)
            point.y = point.y - 200
            
            let newPoint = mapView.projection.coordinate(for: point)
            let camera = GMSCameraUpdate.setTarget(newPoint)
            mapView.animate(with: camera)
            print("Drag ended!")
            print("Update Marker data if stored somewhere.")
            
            
        }
        
       
        
        func mapView (_ mapView: GMSMapView, didEndDragging didEndDraggingMarker: GMSMarker) {
            
            
            mapView.animate(toLocation: didEndDraggingMarker.position)
            mapView.selectedMarker = didEndDraggingMarker
            
            var point = mapView.projection.point(for: didEndDraggingMarker.position)
            point.y = point.y - 200
            
            let newPoint = mapView.projection.coordinate(for: point)
            let camera = GMSCameraUpdate.setTarget(newPoint)
            mapView.animate(with: camera)
            print("Drag ended!")
            print("Update Marker data if stored somewhere.")
//            locationSearchService.getAddressFromLatLon(newPoint.latitude, newPoint.longitude, success: { result in
//                self.city = result.administrativeArea ?? ""
//                AppUtil.city = result.administrativeArea ?? ""
//            }, failure: { _ in
//
//            })
            
            
            
        }
      
    }
}

