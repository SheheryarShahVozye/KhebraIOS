//
//  AppUtil.swift
//  Khebra
//
//  Created by Sheheryar on 30/08/2022.
//

import Foundation
import Combine
import CryptoKit
import MapKit
import SwiftUI
import SystemConfiguration

class AppUtil {

    public static let ONLY_DATE_THREE_FORMAT: String = "MMM dd, yyyy" // MMM dd yyyy
    public static let SERVER_TIMESTAMP_FORMAT: String = "yyyy-MM-dd'T'HH:mm:ss"
    public static let TIMESTAMP_FORMAT: String = "HH:mm"
    public static let profileFormat: String = "MM/dd/yyyy"
    public static let CREATE_FORMAT: String = "M-dd-yyyy"
    public static let SERVER_TIMESTAMP: String = "dd-MM-yyyy"
    public static let AM_PM_TIMESTAMP: String = "hh:mm a"
    public static let SERVER_TIMESTAMP_FORMAT_WITH_TIME_ZONE: String = "yyyy-MM-dd'T'HH:mm:ssZ"
    
    public static func getNotch() -> Bool {
        var hasNotch: Bool {
            
            guard #available(iOS 11.0, *), let window =  UIApplication.shared.windows.filter({$0.isKeyWindow}).first else { return false }
            if UIDevice.current.orientation.isPortrait {
                return window.safeAreaInsets.top >= 44
            } else {
                return window.safeAreaInsets.left > 0 || window.safeAreaInsets.right > 0
            }
        }
        return hasNotch
    }
    
    static func isNetworkReachable(with flags: SCNetworkReachabilityFlags) -> Bool {
        let isReachable = flags.contains(.reachable)
        let needConnection = flags.contains(.connectionRequired)
        let canConnectAutomatically = flags.contains(.connectionOnDemand) || flags.contains(.connectionOnTraffic)
        let canConnectWithoutInteraction = canConnectAutomatically && !flags.contains(.interventionRequired)
        return isReachable && (!needConnection || canConnectWithoutInteraction)
    }
    
    
    public static func getPostDateString(_ value: Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = SERVER_TIMESTAMP_FORMAT_WITH_TIME_ZONE
        return dateFormatter.string(from: value)
    }
    
    public static func getDateOnly(format : String,dateValue: String) -> String {
        
        
        let dateFormatterGet = DateFormatter()
        dateFormatterGet.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'"
        
        let dateFormatterPrint = DateFormatter()
        dateFormatterPrint.dateFormat = "dd,MMM"
        
        if let date = dateFormatterGet.date(from: dateValue) {
            print(dateFormatterPrint.string(from: date))
            return dateFormatterPrint.string(from: date)
        } else {
            print("There was an error decoding the string")
            return ""
        }
        
    }
    
    public static func getAmPmTime(_ value: Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = AM_PM_TIMESTAMP
        return dateFormatter.string(from: value)
    }
    
    public static var registerResponse: RegisterResponseBody?
    public static var user: User?
    public static var otp: Int?
    public static var CurrentLocationLatitude: Double?
    public static var CurrentLocationLongitude: Double?
    public static var addServiceLocationLongitude: Double?
    public static var addServiceLocationLatitude: Double?
    public static var idToken: String = ""
    public static var technicianNumber: String = ""
    public static let reachability = SCNetworkReachabilityCreateWithName(nil, "www.apple.com")
 
    public static var services: [Service] = []
    
    public static var serviceTypes: [String] = ["Electricity","Plumbing","Carpentry","Blacksmith","Conditioning","Paints","Cleanliness"
    ,"Household Appliance","Mobiles","Computer","Surveillance Cameras","Flooring","Pest Control","Baggage Transfer"]
    public static var serviceImages: [String] = ["electricity","plumbing","carpentry","blacksmith","conditioning","Paint","cleaness"
    ,"household","mobile","computer","survelance","flooring","pestControl","baggageTransfer"]
}
