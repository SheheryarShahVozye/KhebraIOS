//
//  CustomerSignUp.swift
//  Khebra
//
//  Created by Sheheryar on 13/09/2022.
//

import Foundation


class RegisterBody: Codable {
    public var phone: String?
}

class RegisterTechnicianBody: Codable {
    public var phone: String?
    public var password: String?
}

class VerifyOtp: Codable {
    public var otp: Int?
}

class registerName: Codable {
    public var name: String?
}


class ProfileUpdate: Codable {
   public var name, email, phone, address: String?
   
}


class RegisterResponseBody: Codable {
      var id: String?
       var available, notificationAndOffer: Bool?
       var phone: String?
       var rating, numReviews: Int?
       var role: String?
       var otp, fullFilledOrders: Int?
       var favouriteTechnician, reviews: [String]?
       var createdAt, updatedAt, address, email: String?
       var name: String?

   
}

class LoginResponse: Codable {
    var msg: String?
    var otp: Int?
}

class UserResponse: Codable {
    var user: User?
    var token: String?

    
}

// MARK: - UserClass 
class User: Codable {
     var _id: String?
     var available, notificationAndOffer: Bool?
     var phone: String?
     var rating, numReviews: Int?
     var role: String?
     var otp, fullFilledOrders: Int?
     var favouriteTechnician, reviews: [String]?
     var createdAt, updatedAt, address, email: String?
     var name: String?

   
}
