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
    var technicianStatus: [TechnicianStatus]?
    var _id: String?
    var postpone: Bool?
    var appliedTechnician: [String]?
    var orderNumber: Int?
    var customer, createdAtTime, status, moreDetails: String?
    var approve, cash, assigned, isPaid: Bool?
    var address, service, serviceName: String?
    var assignedTo: TechnicianProfile?
    var totalPrice: Int?
    var couponCode, createdAt, updatedAt: String?
    var v: Int?
    var invoice: InvoiceObject?

   
}



class InvoiceObject: Codable {
        var order: String?
     var taxNumber, technicianFare, spareParts, workFee: Int?
     var sparePartDelivery, totalPrice: Int?
     var url, id, createdAt, updatedAt: String?
}

class TechnicianStatus: Codable {
    var timing: OrderTime?
    var title: String?
    var status: Bool?
    var _id: String?

}
