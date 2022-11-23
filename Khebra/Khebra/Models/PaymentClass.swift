//
//  PaymentClass.swift
//  Khebra
//
//  Created by apple on 23/11/2022.
//

import Foundation

class PaymentResponse: Codable {
    var orderID, paymentID: String?
    var isPaid: Bool?
    var message: String?
}
