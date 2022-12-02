//
//  Offers.swift
//  Khebra
//
//  Created by apple on 19/11/2022.
//

import Foundation

class OffersClass: Codable {
    var discount: Int?
    var url, description: String?

   
}

class NotificationObjectElement: Codable {
    var id, title, descripton, user: String?
    var orderId: IncomingOrder?
    var v: Int?
    var createdAt: String?
    var updatedAt: String?

  
}
