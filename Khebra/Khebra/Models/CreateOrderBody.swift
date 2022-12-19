//
//  CreateOrder.swift
//  Khebra
//
//  Created by Sheheryar on 19/09/2022.
//

import Foundation

class CreateOrderObject: Codable {
    public var moreDetails, address, couponCode: String?
    public var onDemand, cash,card: Bool?
    public var url: [String]?
    public var scheduled: OrderTime?
    public var immediately: Bool?
    public var paymentMethod: PaymentMethod?
    public var location: Location?

   
}


class CreateOrderResponse: Codable {
    var orderNumber: Int?
    var postpone: Bool?
    var card: Bool?
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

class IncomingOrder: Codable {
    var location: Location?
    var postpone: Bool?
    var appliedTechnician: [String]?
    var approve: Bool?
    var _id: String?
    var orderNumber: Int?
    var customer: User?
    var orderTime: OrderTime?
    var onDemant: Bool?
    var status, moreDetails: String?
    var url: [String]?
    var cash, assigned, isPaid: Bool?
    var address, service, serviceName: String?
    var totalPrice: Int?
    var couponCode,assignedTo: String?
    var reviewed: Bool?
    var createdAt, updatedAt: String?
    var v: Int?
    var paymentMethod: PaymentMethod?
    var scheduled: OrderTime?
    var createdAtTime: String?
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
