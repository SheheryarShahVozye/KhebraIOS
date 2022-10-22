//
//  CreateOrder.swift
//  Khebra
//
//  Created by Sheheryar on 19/09/2022.
//

import Foundation




class CreateOrderObject: Codable {
    public var moreDetails, address, couponCode: String?
    public var onDemant, cash: Bool?
    public var url: String?
    public var orderTime: OrderTime?
    public var paymentMethod: PaymentMethod?
    public var location: Location?

   
}


class CreateOrderResponse: Codable {
    var orderNumber: Int?
    var customer: String?
    var orderTime: OrderTime?
    var onDemant: Bool?
    var status, moreDetails: String?
    var url: String?
    var cash, assigned, isPaid: Bool?
    var address, service, serviceName: String?
    var totalPrice: Int?
    var couponCode: String?
    var reviewed: Bool?
    var location: Location?
    var id, createdAt, updatedAt: String?
    var v: Int?
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
