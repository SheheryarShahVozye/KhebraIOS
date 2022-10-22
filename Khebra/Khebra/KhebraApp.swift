//
//  KhebraApp.swift
//  Khebra
//
//  Created by Sheheryar on 23/08/2022.
//

import SwiftUI
import GoogleMaps
import GooglePlaces
@main
struct KhebraApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appdelegate
    @StateObject var viewRouter = ViewRouter()
    @StateObject var serviceManager = ServiceManager()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(viewRouter)
                .environmentObject(serviceManager)
                .colorScheme(.light)
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate{
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
//        //
        GMSPlacesClient.provideAPIKey("AIzaSyAFcDO10tETCsKpHIGc9-FkXlygXtOGKt0")
        GMSServices.provideAPIKey("AIzaSyAFcDO10tETCsKpHIGc9-FkXlygXtOGKt0")
        return true
    }
    
    func application(_ application: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey: Any]) -> Bool {
      //return GIDSignIn.sharedInstance.handle(url)
        return true
    }
    
    
}
