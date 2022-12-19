//
//  KhebraApp.swift
//  Khebra
//
//  Created by Sheheryar on 23/08/2022.
//

import SwiftUI
import GoogleMaps
import GooglePlaces
import MoyasarSdk
import Firebase

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
                .preferredColorScheme(.light)
                .environment(\.layoutDirection, (UserDefaults.standard.value(forKey: Keys.language) as? String? == "ar") ? .rightToLeft :  .leftToRight)
                .environment(\.locale, .init(identifier: UserDefaults.standard.value(forKey: Keys.language) as? String ?? "en"))
              
        }
    }
}

class AppDelegate:  NSObject, UIApplicationDelegate, MessagingDelegate, UNUserNotificationCenterDelegate{
    
    let gcmMessageIDKey = "gcm.message_id"
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        //
        
        FirebaseApp.configure()

        Messaging.messaging().delegate = self
    
        try! Moyasar.setApiKey("pk_test_y5vomjRnbaTVRLf2E2gBdvBb9hTxDieRwi3d3rcw")
        
        if #available(iOS 10.0, *) {
          // For iOS 10 display notification (sent via APNS)
          UNUserNotificationCenter.current().delegate = self

          let authOptions: UNAuthorizationOptions = [.alert, .badge, .sound]
          UNUserNotificationCenter.current().requestAuthorization(
            options: authOptions,
            completionHandler: {_, _ in })
        } else {
          let settings: UIUserNotificationSettings =
          UIUserNotificationSettings(types: [.alert, .badge, .sound], categories: nil)
          application.registerUserNotificationSettings(settings)
        }

        application.registerForRemoteNotifications()
        
       
        
        GMSPlacesClient.provideAPIKey("AIzaSyD5LZIEnaq575uMaMfsdu5_PFpqERy8Ek0")
        GMSServices.provideAPIKey("AIzaSyD5LZIEnaq575uMaMfsdu5_PFpqERy8Ek0")
        
        
        
       
        
        return true
    }
    
    func application(_ application: UIApplication,
                     didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        
      Messaging.messaging().apnsToken = deviceToken
        let token = deviceToken.map { String(format: "%02.2hhx", $0) }.joined()
        print("APNs Device Token: \(token)")
           // Messaging.messaging().apnsToken = deviceToken
        Messaging.messaging().setAPNSToken(deviceToken, type: .prod)
    }
    
    
    func application(_ application: UIApplication, didReceiveRemoteNotification userInfo: [AnyHashable: Any],
                     fetchCompletionHandler completionHandler: @escaping (UIBackgroundFetchResult) -> Void) {

      if let messageID = userInfo[gcmMessageIDKey] {
        print("Message ID: \(messageID)")
      }

      print(userInfo)

      completionHandler(UIBackgroundFetchResult.newData)
    }
    
    
    
    func application(_ application: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey: Any]) -> Bool {
      //return GIDSignIn.sharedInstance.handle(url)
        return true
    }
    
    func messaging(_ messaging: Messaging, didReceiveRegistrationToken fcmToken: String?) {

      let deviceToken:[String: String] = ["token": fcmToken ?? ""]
        print("Device token: ", deviceToken) // This token can be used for testing notifications on FCM
        AppUtil.deviceToken = fcmToken ?? ""
       
        Messaging.messaging().unsubscribe(fromTopic: "MetaPersonal") { error in
            print("unsubscribe to weather topic")

        }
       
    }
    
    
}
