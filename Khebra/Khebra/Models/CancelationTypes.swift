//
//  CancelationTypes.swift
//  Khebra
//
//  Created by apple on 15/12/2022.
//

import Foundation

class cancelationPostbody: Codable {
    var reason: String?
    var moreDetail: String?
}



public struct cancelationTypes {
    public static var techLate = "The technician is late"
    public static var requestCancelation = "Technician request cancellation"
    public static var technotprofesional = "The technician is not a professional"
    public static var priceHigh = "The price is high"
    public static var anothereason = "Another reason, please write it down"
}
