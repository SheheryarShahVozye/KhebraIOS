//
//  TechnicianProfileClass.swift
//  Khebra
//
//  Created by apple on 30/10/2022.
//

import Foundation

class TechnicianProfile: Codable {
    var mypoints: Mypoints?
    var location: Location?
    var _id: String?
    var available, notificationAndOffer: Bool?
    var phone: String?
    var rating, numReviews: Int?
    var role: String?
    var fullFilledOrders: Int?
    var favouriteTechnician: [String]?
   // var ipInfo: IPInfo?
    var lastLocation: Location?
    var reviews: [String]?
    var createdAt, updatedAt,name, email,idNumber,commercialRegistraionNumber,url: String?
    var balance: Int?
    var urls: [String]?
    var city: String?
    var dob: String?

}

class Mypoints: Codable {
    var points: Int?

   
}
