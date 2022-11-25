//
//  CreateOrder.swift
//  Khebra
//
//  Created by Sheheryar on 19/09/2022.
//

import Foundation

class CreateOrderObject: Codable {
    public var moreDetails, address, couponCode: String?
    public var onDemand, cash: Bool?
    public var url: String?
    public var scheduled: OrderTime?
    public var immediately: Bool?
    public var paymentMethod: PaymentMethod?
    public var location: Location?

   
}


class CreateOrderResponse: Codable {
    var orderNumber: Int?
    var postpone: Bool?
    var appliedTechnician: [String]?
    var customer: String?
    var scheduled: OrderTime?
    var createdAtTime, status, moreDetails: String?
    var approve, cash, assigned, isPaid: Bool?
    var address, service, serviceName: String?
    var totalPrice: Int?
    var couponCode: String?
    var location: Location?
    var _id, createdAt, updatedAt: String?
    var __v: Int?
}

// MARK: - Location
class Location: Codable {
    public var coordinates: [Double]?

    
}

// MARK: - OrderTime
class OrderTime: Codable {
   public var date, time: String?

   
}

// MARK: - PaymentMethod
class PaymentMethod: Codable {
    public var number: Int?
    public var expMonth, expYear: String?
    public var cvc: Int?

  
}
