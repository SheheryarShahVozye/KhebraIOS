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
    
    public static var serviceTypes: [String] = ["Electricity","Plumbing","Carpentry","Blacksmith","Conditioning","Paints","Cleanliness"
    ,"Household Appliance","Mobiles","Computer","Surveillance Cameras","Flooring","Pest Control","Baggage Transfer"]
    public static var serviceImages: [String] = ["electricity","plumbing","carpentry","blacksmith","conditioning","Paint","cleaness"
    ,"household","mobile","computer","survelance","flooring","pestControl","baggageTransfer"]
}
