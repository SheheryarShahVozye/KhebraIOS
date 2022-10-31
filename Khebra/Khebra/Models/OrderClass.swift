//
//  OrderClass.swift
//  Khebra
//
//  Created by apple on 29/10/2022.
//

import Foundation


public class OrderObjectElement: Codable {
    var scheduled: OrderTime?
    var location: Location?
    var _id: String?
    var postpone: Bool?
    var appliedTechnician: [String]?
    var orderNumber: Int?
    var customer, createdAtTime, status, moreDetails: String?
    var approve, cash, assigned, isPaid: Bool?
    var address, service, serviceName: String?
    var totalPrice: Int?
    var couponCode, createdAt, updatedAt: String?
    var v: Int?

   
}

